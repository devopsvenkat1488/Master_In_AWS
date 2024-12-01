resource "aws_kms_key" "example" {
  description = "Example KMS key for encryption"
  enable_key_rotation = true
}
