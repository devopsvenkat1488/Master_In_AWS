resource "aws_elastic_beanstalk_application" "example" {
  name = "example-beanstalk-app"
}

resource "aws_elastic_beanstalk_environment" "example" {
  name                = "example-env"
  application         = aws_elastic_beanstalk_application.example.name
  solution_stack_name = "64bit Amazon Linux 2 v3.3.6 running Node.js"

  tier {
    name = "WebServer"
  }
}
