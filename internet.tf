# 建立一個 Internet Gateway（IGW）
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "terry-test-IGW"
  }
}