#This Terraform Code Deploys Basic VPC Infra.
provider "aws" {
    access_key = "AKIA5DWCIY25DJYFX4FV"
    secret_key = "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"
    region = "${var.aws_region}"
}

terraform {
    backend "s3" {
        bucket = "backentstatefile"
        key = "jenkins.tfstate"
        region ="us-east-1 "
      
    }

}