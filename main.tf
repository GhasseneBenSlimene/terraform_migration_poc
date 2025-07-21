terraform {
  cloud {
    organization = "migration_poc"

    workspaces {
      name = "migration_totale_poc" 
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "apres-migration-totale-bucket"
}