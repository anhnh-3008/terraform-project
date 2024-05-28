resource "aws_cloudfront_origin_access_identity" "origin_access_identity" {
  comment = "OAI for ${var.name_prefix}media"
}

resource "aws_cloudfront_distribution" "s3_distribution" {
  origin {
    domain_name = var.bucket_name
    origin_id   = "S3-${var.bucket_name}"

    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.origin_access_identity.cloudfront_access_identity_path
    }
  }

  enabled             = true
  is_ipv6_enabled     = true
  comment             = "${var.name_prefix}S3 CloudFront Distribution"
  default_root_object = ""

  default_cache_behavior {
    target_origin_id       = "S3-${var.bucket_name}"
    viewer_protocol_policy = "redirect-to-https"
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    compress               = true

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  tags = {
    Name = "${var.name_prefix}S3 CloudFront Distribution"
  }
}

resource "aws_s3_bucket_policy" "media_bucket_policy" {
  bucket = var.bucket_name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity ${aws_cloudfront_origin_access_identity.origin_access_identity.cloudfront_access_identity_path}"
        }
        Action   = "s3:GetObject"
        Resource = "${var.bucket_arn}/*"
      }
    ]
  })
}
