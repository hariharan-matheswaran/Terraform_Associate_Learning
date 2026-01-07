variable "db_password"{
    type = string

    validation {
      condition = length(var.db_password) >= 12
      error_message = "give 12 digit password"
    }
}