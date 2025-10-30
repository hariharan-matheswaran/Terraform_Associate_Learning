terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "aws"{
  region     = "us-east-1"
}

provider "github"{
    token = 
}

provider azurerm {}
provider kubernetes {}

