provider "aws" {
  region = "ap-southeast-2"  # Change this to your preferred AWS region
}

resource "aws_instance" "new_instance" {
  ami           = "ami-09e143e99e8fa74f9" # Update with your region's AMI ID
  instance_type = "t2.micro"
  key_name = "firstak_key_pair.pem"  
  vpc_security_group_ids = [ "sg-008aced6bb2a271ea" ]
  tags = {
    Name = "Terraform-Instance1"
  }
}