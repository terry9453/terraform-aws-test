####建立 Elastic IP

resource "aws_eip" "nat_eip" {
  domain = "vpc"   # 表示這個 EIP 是用在 VPC 裡的（不是 EC2 Classic）

  tags = {
    Name = "terry-nat-eip"  # 給它一個名字，方便你在 AWS 控制台看到
  }
}

######建立nat

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id  # 把上面建立的 EIP 掛上來
  subnet_id     = aws_subnet.public_subnet_1a.id  # NAT Gateway 本身要部署在 Public Subnet 裡

  tags = {
    Name = "terry-nat-gateway"
  }

  depends_on = [aws_internet_gateway.igw]  # 確保 IGW 要先建好，不然 NAT GW 無法連外
}