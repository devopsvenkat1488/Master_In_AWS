resource "aws_cloudfront_distribution" "example" {
  origin {
    domain_name = "my-example-s3-bucket-12345.s3.amazonaws.com"
    origin_id   = "S3-my-example-bucket"
  }

  enabled = true
  is_ipv6_enabled = true
  comment = "Example CloudFront Distribution"

  default_cache_behavior {
    target_origin_id = "S3-my-example-bucket"
    viewer_protocol_policy = "redirect-to-https"
  }

  price_class = "PriceClass_100"  # Free-tier eligible (low-traffic)
}
