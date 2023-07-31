terraform {
        required_providers {
        aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
}
}
required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2_instance" {
	count = 2
        ami = "ami-0f5ee92e2d63afc18"
        instance_type = "t2.micro"
        tags = {
                Name = "Terraform_instance"
}
}

output "ec2_public_ip" {
	value = aws_instance.ec2_instance[*].public_ip
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "biller-bucket23"

  tags = {
    Name        = "biller-bucket23"
    Environment = "Dev"
  }
}
