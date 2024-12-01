provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 (free tier eligible)
  instance_type = "t2.micro"  # Free-tier eligible instance type

  tags = {
    Name = "ExampleEC2Instance"
  }
}
