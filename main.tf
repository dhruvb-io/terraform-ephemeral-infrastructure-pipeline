provider "aws" {
    region = var.region
}

terraform {
    backend "s3" {
        bucket = "remote-backend-s3-dhruv"
        key = "terraform.tfstate"
        region = "us-east-1"
        encrypt = true
    }
}

resource "aws_instance" "cleanup" {
    ami = var.ami
    instance_type = var.instance_type
    tags = {
        Name = "myapp-test"
    }
}