terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  
  required_version = ">= 1.2.0"
}

provider  "aws" {
  region = "us-east-1"
}

resource  "aws_instance" "example" {
  ami             = "ami-014d544cfef21b42d"
  instance_type   = "t2.micro"

  tags = {
    Name = "terraform_Demo"
  }
}

