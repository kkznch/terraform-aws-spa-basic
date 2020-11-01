# provider "aws" {
#   region = "ap-northeast-1"
# }

# module "vpc" {
#   source  = "terraform-aws-modules/vpc/aws"
#   version = "2.21.0"

#   name = var.vpa_name
#   cidr = var.vpc_cidr

#   azs = var.vpc_azs
#   private_subnets = var.vpc_private_subnets
#   public_subnets = var.vpc_public_subnets

#   enable_nat_gateway = var.vpc_enable_nat_gateway

#   tqgs = var.vpc_tags
# }

# module "ec2_instances" {
#   source = "terraform-aws-modules/ec2-instance/aws"
#   version = "2.21.0"


# }

terraform {
  required_providers {
    aws = { source = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}
