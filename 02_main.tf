resource "aws_instance" "MSSEC2Instance" {
    ami = "ami-06a0b4e3b7eb7a300"
    instance_type = "t2.micro"
    security_groups = ["launch-wizard-9"]
    key_name = "devopsmss"
    tags = {
       Name = "Terraform Server by TF" 
    }
}