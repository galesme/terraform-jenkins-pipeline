resource "aws_s3_bucket" "my_s3_bucket" {
  bucket_prefix = var.bucket_prefix

  tags = var.tags
}

resource "aws_s3_bucket_acl" "s3_acl" {
  #depends_on = [aws_s3_bucket_ownership_controls.my_s3_bucket]

  bucket = aws_s3_bucket.my_s3_bucket.id
  acl    = var.acl
}

resource "aws_s3_bucket_versioning" "s3_versioning" {
  bucket = aws_s3_bucket.my_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}