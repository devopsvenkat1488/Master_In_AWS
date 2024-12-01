resource "aws_rds_cluster" "example" {
  cluster_identifier      = "example-aurora-cluster"
  engine                  = "aurora-mysql"
  master_username         = "admin"
  master_password         = "password123"
  skip_final_snapshot     = true
  database_name           = "exampledb"
}

resource "aws_rds_cluster_instance" "example" {
  identifier        = "example-aurora-instance"
  cluster_identifier = aws_rds_cluster.example.cluster_identifier
  instance_class     = "db.t2.micro"
  engine             = "aurora-mysql"
}
