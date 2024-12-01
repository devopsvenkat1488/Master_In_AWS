resource "aws_db_instance" "example" {
  identifier        = "example-db"
  engine            = "mysql"
  instance_class    = "db.t2.micro"  # Free tier eligible
  allocated_storage = 20  # 20GB
  username          = "admin"
  password          = "password123"
  db_name           = "exampledb"
  skip_final_snapshot = true
}
