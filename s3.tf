resource "aws_s3_bucket" "my_s3_bucket" {
  bucket_prefix = var.bucket_prefix

  tags = var.tags
}


resource "aws_s3_bucket_versioning" "s3_versioning" {
  bucket = aws_s3_bucket.my_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
####################

resource "aws_s3_bucket_ownership_controls" "aws_s3_own" {
  bucket = aws_s3_bucket.my_s3_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "aws_s3_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.aws_s3_own]

  bucket = aws_s3_bucket.my_s3_bucket.id
  acl    = var.acl
}