terraform {
   backend "s3" {
     bucket = "udacity-tf-<user_name>"
     key    = "terraform/terraform.tfstate"
     region = "ap-southeast-1"
   }
 }

 provider "aws" {
   region = "ap-southeast-1"
   
   default_tags {
     tags = local.tags
   }
 }

 provider "aws" {
  alias  = "singapore-1"
  region = "ap-southeast-1"
}
