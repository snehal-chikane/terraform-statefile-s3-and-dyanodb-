 terraform {
  backend "s3" {
    bucket = "snehal-chikane-demo-s3"
    key    = "snehal/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt = true
  }
} 

