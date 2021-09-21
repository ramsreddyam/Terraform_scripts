provider "aws"{
  region = "ap-south-1" 
  access_key = "AKIAWRGNDMVHZR6CZYFP"
  secret_key = "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"
}

resource "aws_instance" "MSSEC2Instance" {
    ami = "ami-06a0b4e3b7eb7a300"
    instance_type = "t2.micro"
    security_groups = ["launch-wizard-9"]
    key_name = "devopsmss"
    tags = {
       Name = "Terraform Server by TF" 
    }
}