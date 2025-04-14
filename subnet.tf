# 建立一個 Public Subnet（子網）
resource "aws_subnet" "public_subnet_1a" {
  vpc_id                  = aws_vpc.main.id   # 指定 VPC
  cidr_block              = "20.0.1.0/24"     # 子網可用的 IP 區段
  availability_zone       = "ap-northeast-1a" # 放在東京的 a 區域
  map_public_ip_on_launch = true              # EC2 啟動時自動配發 Public IP

  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "public_subnet_2c" {
  vpc_id                  = aws_vpc.main.id   # 指定 VPC
  cidr_block              = "20.0.2.0/24"     # 子網可用的 IP 區段
  availability_zone       = "ap-northeast-1c" # 放在東京的 a 區域
  map_public_ip_on_launch = true              # EC2 啟動時自動配發 Public IP

  tags = {
    Name = "public-subnet-2"
  }
}

resource "aws_subnet" "private_subnet_3a" {
  vpc_id                  = aws_vpc.main.id   # 指定 VPC
  cidr_block              = "20.0.3.0/24"     # 子網可用的 IP 區段
  availability_zone       = "ap-northeast-1a" # 放在東京的 a 區域
  map_public_ip_on_launch = true              # EC2 啟動時自動配發 Public IP

  tags = {
    Name = "private-subnet-3"
  }
}

resource "aws_subnet" "private_subnet_4c" {
  vpc_id                  = aws_vpc.main.id   # 指定 VPC
  cidr_block              = "20.0.4.0/24"     # 子網可用的 IP 區段
  availability_zone       = "ap-northeast-1c" # 放在東京的 a 區域
  map_public_ip_on_launch = true              # EC2 啟動時自動配發 Public IP

  tags = {
    Name = "private-subnet-4"
  }
}

resource "aws_subnet" "private_subnet_5a" {
  vpc_id                  = aws_vpc.main.id   # 指定 VPC
  cidr_block              = "20.0.5.0/24"     # 子網可用的 IP 區段
  availability_zone       = "ap-northeast-1a" # 放在東京的 a 區域
  map_public_ip_on_launch = true              # EC2 啟動時自動配發 Public IP

  tags = {
    Name = "private-subnet-5"
  }
}

resource "aws_subnet" "private_subnet_6c" {
  vpc_id                  = aws_vpc.main.id   # 指定 VPC
  cidr_block              = "20.0.6.0/24"     # 子網可用的 IP 區段
  availability_zone       = "ap-northeast-1c" # 放在東京的 a 區域
  map_public_ip_on_launch = true              # EC2 啟動時自動配發 Public IP

  tags = {
    Name = "private-subnet-6"
  }
}

