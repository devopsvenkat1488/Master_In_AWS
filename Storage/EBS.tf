resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1a"
  size              = 8  # 8GB (eligible for free tier)
  tags = {
    Name = "ExampleEBSVolume"
  }
}
