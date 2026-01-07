/*variable "my-list" {
    type = list
    default = ["hello","hello","world"]
}

output "mylist" {
    value = var.my-list
}*/


variable "my-set" {
    type = set(string)
    default = ["world","hello","world","hello"]
}

output "myset" {
    value = var.my-set
}