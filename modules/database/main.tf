resource "aws_db_subnet_group" "this" {
  name       = "db-subnet-group"
  subnet_ids = var.db_subnets
}

resource "aws_db_instance" "this" {
  identifier              = "app-db"
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = var.instance_class
  allocated_storage       = 20
  multi_az                = true
  db_name                 = var.db_name
  username                = var.db_username
  password                = var.db_password
  vpc_security_group_ids  = [var.db_sg]
  db_subnet_group_name    = aws_db_subnet_group.this.name
  skip_final_snapshot     = true
}
