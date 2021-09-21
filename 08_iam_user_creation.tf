provider "aws"{
  region = "ap-south-1" 
  }

resource "aws_iam_user" "IAMUSERMSS"{
    count = length(var.names)
    name = var.names[count.index]
}