# 建立 RDS Subnet Group
resource "aws_db_subnet_group" "this" {
  name       = "terry-test-rds-subnet-group"
  subnet_ids = [
    aws_subnet.private_subnet_5a.id,
    aws_subnet.private_subnet_6c.id
  ]

  tags = {
    Name = "terry-test-rds-subnet-group"
  }
}

# 建立 RDS MySQL 實例
resource "aws_db_instance" "this" {
  identifier              = "terry-test-rds"
  db_name                 = "wpdb"
  engine                  = "mysql"
  engine_version          = "8.0.35"               # 建議固定版本
  instance_class          = "db.t3.micro"           # Free Tier 支援
  username                = "admin"
  password                = "cxcxc+123456"
  allocated_storage       = 20
  storage_encrypted       = false
  backup_retention_period = 0                     # 不啟用備份
  multi_az                = false                 # 不啟用 Multi-AZ

  db_subnet_group_name    = aws_db_subnet_group.this.name
  vpc_security_group_ids  = [aws_security_group.sql_test.id]
  publicly_accessible     = false                 # 不公開連線
  skip_final_snapshot     = true                  # 刪除時不備份

  availability_zone       = "ap-northeast-1a"     # 指定 Zone

  tags = {
    Name = "terry-test-rds"
  }
}
