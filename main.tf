//main.tf file
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "snehal" {
  ami = "ami-00ca570c1b6d79f36"
  subnet_id = "subnet-0b83fcae4efe7c8f9"
  instance_type = "t2.micro"
}

