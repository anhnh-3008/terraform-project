# Call EC2 module
module "ec2" {
  source           = "./modules/ec2"
  instance_type    = var.instance_ec2_type
  key_name         = var.key_name
  nodejs_user_data = file("./modules/ec2/user_data/nodejs_server.sh")
  python_user_data = file("./modules/ec2/user_data/python_server.sh")
  name_prefix      = var.name_prefix
  ami_id           = var.ami_id
}


# Call Load Balancer module
module "load_balancer" {
  source             = "./modules/load_balancer"
  name_prefix        = var.name_prefix
  availability_zones = var.availability_zones
}

# Call Auto Scaling module
module "autoscaling" {
  source           = "./modules/autoscaling"
  ami_id           = var.ami_id
  instance_type    = var.instance_ec2_type
  key_name         = var.key_name
  nodejs_user_data = file("./modules/ec2/user_data/nodejs_server.sh")
  desired_capacity = var.desired_capacity
  max_size         = var.max_size
  min_size         = var.min_size
  subnet_ids       = var.subnet_ids
  name_prefix      = var.name_prefix
  load_balancer    = module.load_balancer.elb_name
}

# Call RDS module
module "rds" {
  source       = "./modules/rds"
  instance_type = var.db_instance_type
  db_name      = var.db_name
  username     = var.rds_username
  password     = var.rds_password
  name_prefix  = var.name_prefix
}

# Call S3 module
module "s3" {
  source      = "./modules/s3"
  name_prefix = var.name_prefix
}

# Call CloudFront module
module "cloudfront" {
  source      = "./modules/cloudfront"
  name_prefix = var.name_prefix
  bucket_name = module.s3.bucket_name
  bucket_arn  = module.s3.bucket_arn
}
