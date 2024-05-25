resource "aws_instance" "nodejs" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = var.nodejs_user_data

  tags = {
    Name = "${var.name_prefix}Nodejs Server"
  }
}

resource "aws_instance" "python" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = var.python_user_data

  tags = {
    Name = "${var.name_prefix}Python Server"
  }
}
