provider "aws"{
  region = "ap-south-1" 

}

resource "aws_security_group" "msssecuritygroup"{
   name = "SecurityGroupMSS"
   description = "This SG which is created by TS"
   vpc_id = "vpc-a78845cc"

  ingress {
    description = "Inbound rules"
    from_port = "0"
    to_port= "65535"
    protocol = "tcp"
    cidr_blocks = "0.0.0.0/0"
  }

 egress {
    description = "Outbound rules"
    from_port = "8080"
    to_port= "8080"
    protocol = "tcp"
    cidr_blocks = "0.0.0.0/0"
  }

  tags = {
      Name = "Security Group By TS"
  }

}