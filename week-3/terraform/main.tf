terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "3.32.0"
        }
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "=2.46.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

provider "azurerm" {
  features {}
}

module "awswebserver" {
    source = "./modules/ec2"

    servername = "CashewsTerraform"
    vmsize = "t3.micro"
}

module "azureappservice" {
    source = "./modules/appservice"
}