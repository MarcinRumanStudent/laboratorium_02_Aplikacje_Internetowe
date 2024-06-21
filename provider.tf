terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 3.0"
        }
    }

    backend "local" {
        path = "terraform.tfstate"
    }
}

provider "aws" {
    access_key = "mock_access_key"
    secret_key = "mock_secret_key"
    region     = "us-east-1"
    s3_force_path_style = true
    skip_credentials_validation = true
    skip_metadata_api_check = true
    endpoints {
        s3 = "http://localhost:4566"
    }
}
