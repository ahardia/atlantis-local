resource "null_resource" "example" {}

# resource "aws_instance" "example" { #tfsec:ignore:aws-ec2-enable-at-rest-encryption
#   ami           = var.ami
#   instance_type = var.instance_type
#   metadata_options {
#     http_tokens = "required"
#   }
# }


resource "aws_security_group" "test" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "ingress test"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.cidr_block]
  }
}

terraform {
  backend "local" {}
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::266732290982:role/terragrunt"
  }
}
