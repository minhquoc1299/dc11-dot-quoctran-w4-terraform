data "aws_vpc" "selected" {
  filter {
    name   = "tag:name"
    values = ["devops-vpc"]
  }
}

data "aws_subnets" "vpc" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id]
  }
}