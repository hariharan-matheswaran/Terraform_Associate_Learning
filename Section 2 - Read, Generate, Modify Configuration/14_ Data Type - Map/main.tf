#Map example --> Collection of Key Value pair
/* 
  {
    "Name": "Hari",
    "Location": "Chennai"
  }
*/

variable "my-map"{
  type = map 
  default = {
    "Name": "Hari",
    "Wife": "Madhu"
  }
}

output "my-map"{
  value = var.my-map
}