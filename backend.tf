terraform {
  backend "s3" {
    bucket  = "dev-hamman" # replace with your S3 bucket
    key     = "vpc-sg-alb-ec2/terraform.tfstate"
    region  = "us-east-1" # change to your AWS region
    encrypt = true
  }
}
