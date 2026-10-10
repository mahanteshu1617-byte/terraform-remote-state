provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "remote_state_test" {
  cidr_block = "10.99.0.0/16"

  tags = {
    Name      = "remote-state-test-vpc"
    ManagedBy = "terraform"
  }
}

output "vpc_id" {
  description = "ID of the test VPC"
  value       = aws_vpc.remote_state_test.id
}
