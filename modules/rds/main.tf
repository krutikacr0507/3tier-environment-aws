resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "my-db-subnet-group"
  subnet_ids = [var.private_subnet_id]
}

resource "aws_db_instance" "database" {
  engine               = "mysql"
  instance_class       = "db.t2.micro"
  allocated_storage    = 10
  storage_type         = "gp2"
  identifier           = "mydatabase"
  username             = "admin"
  password             = "mypassword"
  publicly_accessible = false
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids = [var.vpc_security_group_id]
}
