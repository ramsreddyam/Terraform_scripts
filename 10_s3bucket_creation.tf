provider "aws"{
  region = "ap-south-1" 
  }

 resource "aws_s3_bucket"  "msss3"{
     bucket = "msss3bucket-tscreation"
     acl = "private"
     versioning {
         enabled = true
     }

     lifecycle_rule {
        enabled = true

        transition {
         days = 30
         storage_class = "STANDARD_IA"
        }

        transition {
         days = 60
         storage_class = "GLACIER"
        }

     }

     tags = {
         Name = "S3 Bucket Created by TS"
     }

 }