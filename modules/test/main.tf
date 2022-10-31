resource "null_resource" "example" {}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
}
