provider "aws" {
    region = var.region
}

resource "aws_instance" "mul_env_instance" {
    ami = var.ami
    instance_type = var.instance_type
    tags = {
        Name = "myapp-${var.env}"
    }
}