provider "aws" {
  region     = "ap-south-1"
  }

resource "aws_instance" "example" {
  ami           = "ami-03695d52f0d883f65" # Amazon Linux 2
  instance_type = "t2.micro"
  tags = {
    Name = "GitHubActionsEC2"
  }
}

