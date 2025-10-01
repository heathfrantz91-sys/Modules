resource "aws_s3_bucket" "this" {
  bucket = var.bucket
  acl    = var.acl
  tags   = var.tags

  versioning {
    enabled = var.versioning["enabled"]
  }

  ownership_controls {
    rule {
      object_ownership = var.object_ownership
    }
  }
}
