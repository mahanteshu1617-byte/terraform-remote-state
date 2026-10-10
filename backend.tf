terraform {
  backend "s3" {
    bucket         = "hca-terraform-state-1791635426"
    key            = "dev/vpc/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

