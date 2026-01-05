
data "aws_ami" "image_id"{
  most_recent = true
  owners = ["amazon"]

  filter {
      name   = "name"
      values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
}
resource "aws_instance" "myec2"{
  instance_type = "t3.micro"
  ami = data.aws_ami.image_id.image_id 
}