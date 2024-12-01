resource "aws_lb" "example" {
  name               = "example-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups   = ["sg-0123456789abcdef0"]
  subnets            = [aws_subnet.example.id]

  enable_deletion_protection = false
}

resource "aws_lb_target_group" "example" {
  name     = "example-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.example.id
}
