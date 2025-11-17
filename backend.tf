 terraform {
  backend "s3" {
    bucket         = "terraform-lipi-test"   # your S3 bucket name
    key            = "mydoc/terraform.tfstate"       # path inside the bucket
    region         = "ap-south-1"                  # AWS region
    encrypt        = true
  }
}
