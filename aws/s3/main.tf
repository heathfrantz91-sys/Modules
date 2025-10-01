resource "aws_s3_bucket" "this" {
  bucket = var.bucket
  acl    = var.acl
  tags   = var.tags

  versioning {
    enabled = var.versioning["enabled"]
  }
}

resource "aws_s3_bucket_ownership_controls" "this" {
  bucket = aws_s3_bucket.this.id

  rule {
    object_ownership = var.object_ownership
  }
}
