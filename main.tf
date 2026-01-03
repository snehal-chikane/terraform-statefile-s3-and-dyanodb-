//main.tf file
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "snehal" {
  ami = "ami-00ca570c1b6d79f36"
  subnet_id = "subnet-0b83fcae4efe7c8f9"
  instance_type = "t3.micro"
}

resource "aws_s3_bucket" "first_s3" {
  bucket = "snehal-chikane-demo-s3"
  
}

resource "aws_dynamodb_table" "tf_lock" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "terraform-locks"
    Environment = "dev"
  }
}

