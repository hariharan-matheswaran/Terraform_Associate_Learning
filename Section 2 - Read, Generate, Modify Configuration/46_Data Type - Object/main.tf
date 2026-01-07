variable "tags"{
  type = object ({Name = string, Age = number})
  default = {
    Name = "Hari"
    Age = "27"
    Key = "value"
  }
}

output "variable_tag"{
  value = var.tags  
}