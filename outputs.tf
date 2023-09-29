output "vpc_id" {
  value = [
    for s in data.aws_vpc.selected : s
  ]
}

# demo