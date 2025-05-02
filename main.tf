terraform {
    cloud {
        organization = "Development-2345"
        workspaces {
            name = "terraform-example1"
        }
    }

    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.96"
        }
    }
}



provider "aws" {
    region = var.region
}
