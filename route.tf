# 建立 Route Table（公網路由表）
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"                       # 指定任何外部流量
    gateway_id = aws_internet_gateway.igw.id      # 導到 IGW 出去
  }

  tags = {
    Name = "public-rt"
  }
}

# 將 Route Table 關聯到 Subnet 上
resource "aws_route_table_association" "public_1_assoc" {
  subnet_id      = aws_subnet.public_subnet_1a.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_2_assoc" {
  subnet_id      = aws_subnet.public_subnet_2c.id
  route_table_id = aws_route_table.public_rt.id
}

# 建立 Route Table（私網路由表）
resource "aws_route_table" "private_rt_1" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"                       # 指定任何外部流量
    gateway_id = aws_internet_gateway.igw.id     # 導到 IGW 出去
  }

  tags = {
    Name = "private-rt1"
  }
}

# 將 Route Table 關聯到 Subnet 上

resource "aws_route_table_association" "private_3_assoc" {
  subnet_id      = aws_subnet.private_subnet_3a.id
  route_table_id = aws_route_table.private_rt_1.id
}

resource "aws_route_table_association" "private_4_assoc" {
  subnet_id      = aws_subnet.private_subnet_4c.id
  route_table_id = aws_route_table.private_rt_1.id
}

# 建立 Route Table（私網路由表）
resource "aws_route_table" "private_rt_2" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"                       # 指定任何外部流量
    gateway_id = aws_internet_gateway.igw.id      # 導到 IGW 出去
  }

  tags = {
    Name = "private-rt2"
  }
}

# 將 Route Table 關聯到 Subnet 上

resource "aws_route_table_association" "private_5_assoc" {
  subnet_id      = aws_subnet.private_subnet_5a.id
  route_table_id = aws_route_table.private_rt_2.id
}

resource "aws_route_table_association" "private_6_assoc" {
  subnet_id      = aws_subnet.private_subnet_6c.id
  route_table_id = aws_route_table.private_rt_2.id
}