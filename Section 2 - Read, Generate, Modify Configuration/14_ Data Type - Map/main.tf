#List example [1, "abcd", true, "hari", "haran", 2903]

variable "my-list"{
  #type = list(number) --> only numbers allowed in list ex: [1,2,3]
  type = list 
}

output "my-list"{
  value = var.my-list
}