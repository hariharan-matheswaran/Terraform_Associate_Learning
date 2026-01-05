
variable "tags"{
  default = {
      "Name" = "Security Group"
      #"CreationDate" = formatdate("DD MMM YYYY hh:mm ZZZ",timestamp()) --> Function calls not allowed
  }
}

locals {
   tags = {
    "Name" = "Security Groups",
    "CreationDate" = formatdate("DD MMM YYYY hh:mm ZZZ",timestamp())
   }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  tags = local.tags
}
