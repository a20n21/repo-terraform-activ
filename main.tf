provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-09e67e426f25ce0d7" # Ubuntu 20.04 LTS (t3.micro)
  instance_type = "t3.micro"

  # Tag opcional para identificar a instância
  tags = {
    Name = "T3 Micro Instance"
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = aws_instance.example.availability_zone
  size              = 30
  type              = "gp3"

  # Tag opcional para identificar o volume EBS
  tags = {
    Name = "Volume 30GB GP3"
  }
}
