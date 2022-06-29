terraform {
  required_version = ">= 1.0.0"
  backend "s3" {
    bucket = "capstone-bb-atlantis"
    key    = "states/workload/terraform.tfstate" 
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.72, <= 4.18.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10, < 2.12"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.4.1, <= 2.5.1"
    }
  }

  # ##  Used for end-to-end testing on project; update to suit your needs
  # backend "s3" {
  #   bucket = "terraform-ssp-github-actions-state"
  #   region = "us-west-2"
  #   key    = "e2e/eks-cluster-with-new-vpc/terraform.tfstate"
  # }
}
