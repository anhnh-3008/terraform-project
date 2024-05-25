resource "aws_launch_configuration" "nodejs_lc" {
  name          = "${var.name_prefix}nodejs-lc"
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = var.nodejs_user_data

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "nodejs_asg" {
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  vpc_zone_identifier  = var.subnet_ids
  launch_configuration = aws_launch_configuration.nodejs_lc.id
  load_balancers       = [var.load_balancer]

  tag {
    key                 = "Name"
    value               = "${var.name_prefix}Nodejs ASG"
    propagate_at_launch = true
  }

  health_check_type         = "ELB"
  health_check_grace_period = 300

  lifecycle {
    create_before_destroy = true
  }
}
