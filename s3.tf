resource "aws_s3_bucket" "bucket1" {
  bucket = "devopsb20bucket001"
  acl    = "private"

  tags = {
    Name        = "devopsb20bucket001"
    Environment = "Dev"
  }
}