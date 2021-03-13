terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "3.32.0"
        }
    }
}

provider "aws" {
    region = var.region
}

module "webserver" {
    source = "../../"

    servername = var.servername
    vmsize = "t3.micro"
}

