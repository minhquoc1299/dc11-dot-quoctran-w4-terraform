data "aws_vpc" "selected" {
  filter {
    name   = "tag:name"
    values = ["devops-vpc"]
  }
}