resource "aws_instance" "myec2"{
  ami = "ami-0360c520857e3138f"
  instance_type = "t3.micro"
  count =  3 
  tags = {
    "Name" = "Hari_EC2-${count.index}"
  }
}

variable "username"{
  type = list
  default = ["hari", "madhu", "hariharan", "Madhumida"]
}

resource "aws_iam_user" "user"{
  name = var.username[count.index]
  count = 3
}
