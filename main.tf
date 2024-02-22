provider "aws" {
  secret_key = "anw/rJ2ruCk4kipeI3wYjWy+eoLP31slkWYDnljZ"
  access_key = "AKIARZYTZU2ONPAY6DRO"
  region = "us-west-1"                     
}

resource "aws_instance" "K8-M" {
  ami = "ami-0da7657fe73215c0c"
  instance_type = "t2.medium"
  key_name = "Aksith-Don't delete"                 
  tags = {
    Name = "Kmaster"                                   
  }
}

resource "aws_instance" "K8-S1" {
  ami = "ami-0da7657fe73215c0c"
  instance_type = "t2.micro"
  key_name = "Aksith-Don't delete"
  tags = {
    Name = "Kslave1"                                        
  }
}
##
