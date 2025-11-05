provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "github_runner" {
  ami           = "ami-01760eea5c574eb86" # Amazon Linux 2
  instance_type = "t2.micro"
  key_name      = "test-linux"

  tags = {
    Name = "GitHubRunner"
  }

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y curl tar
              mkdir /home/ec2-user/actions-runner
              cd /home/ec2-user/actions-runner
              curl -o actions-runner.tar.gz -L https://github.com/actions/runner/releases/download/v2.314.1/actions-runner-linux-x64-2.314.1.tar.gz
              tar xzf actions-runner.tar.gz
              ./config.sh --url https://github.com/YOUR_ORG/YOUR_REPO --token YOUR_TOKEN
              ./run.sh
              EOF
}
