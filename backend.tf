terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
  backend "s3" {
    bucket = "neonfoundation-tf"
    key    = "vpc.tfstate"
    region = "eu-central-1"
  }
}
