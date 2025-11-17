provider "aws" {
  region     = "ap-south-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "example" {
  ami           = "ami-03695d52f0d883f65" # Amazon Linux 2
  instance_type = "t2.micro"
  tags = {
    Name = "GitHubActionsEC2"
  }
}

