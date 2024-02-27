provider "aws" {
  region = "us-east-1"  # Set your desired AWS region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-terraform-bucket"  # Set a unique name for your bucket
  acl    = "private"

  tags = {
    Name        = "ExampleTerraformBucket"
    Environment = "Development"
  }
}