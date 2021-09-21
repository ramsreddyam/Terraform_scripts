output "AWS-PublicIP"{
    description = "This is the Public IP address for the ec2 instance"
    value = ${aws_instance.MSSEC2Instance.public_ip}
}

output "aws_private_ip"{
    description = "This is the Private IP address for the ec2 instance"
    value = ${aws_instance.MSSEC2Instance.private_ip}
}

output "id"{
    description = "This is the ID of the ec2 instance"
    value = ${aws_instance.MSSEC2Instance.id}
}