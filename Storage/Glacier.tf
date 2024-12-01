resource "aws_s3_bucket" "example_glacier" {
  bucket = "my-glacier-storage-bucket-12345"
  acl    = "private"

  lifecycle {
    transition {
      days          = 30
      storage_class = "GLACIER"
    }
  }
}
