provider "aws" {
  secret_key = ""
  access_key = ""
  region = "us-east-2"
}
resource "aws_instance" "k8-M" {
  ami = "ami-0e0bf53f6def86294"
  instance_type = "t2.medium"
  key_name = "test"
  tags = {
     Name = "Kmaster"
  }
}
resource "aws_instance" "k8-M" {
  ami = "ami-0e0bf53f6def86294"
  instance_type = "t2.medium"
  key_name = "test"
  tags = {
     Name = "KSlave"
  }
}
