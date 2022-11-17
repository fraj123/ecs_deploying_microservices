terraform {
  cloud {
    organization = "fraj123"

    workspaces {
      name = "ecs_deploying_microservices"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}
