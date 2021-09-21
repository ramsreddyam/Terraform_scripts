provider "aws"{
  region = "ap-south-1" 
  }

  resource "aws_instance" "eipinstance"{
    ami = "ami-06a0b4e3b7eb7a300"
    instance_type = "t2.micro"
    security_groups = ["launch-wizard-9"]
    key_name = "devopsmss"
    tags = {
       Name = "Server with EIP" 
    }

  }
  resource "aws_eip" "eipmss"{
      tags = {
       Name = "EIP by TS" 
    }

  }

  resource "aws_eip_association" "eipasso"{
     instance_id = aws_instance.eipinstance.id
     allocation_id=aws_eip.eipmss.id
  }