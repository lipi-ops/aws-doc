provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-01760eea5c574eb86" # Amazon Linux 2 (Mumbai)
  instance_type = "t2.micro"
  key_name      = test-linux

  tags = {
    Name = "GitHubEC2"
  }
}
