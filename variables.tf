variable "aws_access_key" {}
variable "aws_secret_key" {}

 create output.tf:

output "instance_id" {
  value = aws_instance.example.id
}
