resource "aws_eip" "lb" {
  domain   = "vpc"
}

output "public-ip"{
  value = aws_eip.lb.public_ip
  #value = aws_eip.lb --> Give all attributes as output
}