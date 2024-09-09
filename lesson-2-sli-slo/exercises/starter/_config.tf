terraform {
   backend "s3" {
     bucket = "udacity-project2-pkdalvi"
     key    = "terraform/terraform.tfstate"
     region = "ap-southeast-1"
   }
 }

 provider "aws" {
   region = "ap-southeast-1"
   #profile = "default"
   
   default_tags {
     tags = local.tags
   }
 }
