terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-08962a4068733a2b6"
  instance_type = "t2.micro"
  key_name = "scrappy"
  security_groups = [ "launch-wizard-1" ]

  tags = {
    Name = "ExampleInstance"
  }
}
