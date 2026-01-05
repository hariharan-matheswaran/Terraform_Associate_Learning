# Condition ? true_val : false_val

variable "region"{
  default = "us-east-1"
}

variable "instance_type"{
  default = "m5.large"
}

resource "aws_instance" "myec2"{
  ami = "ami-123"
  instance_type = (var.instance_type == "m5.large" && var.region == "us-east-1") ? "m5.large" : "t2.micro"
}