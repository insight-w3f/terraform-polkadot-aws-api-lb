variable "create" {
  description = "Bool to create the resources"
  type        = bool
  default     = true
}

########
# Label
########
variable "id" {
  description = "A unique identifier for the resources"
  type        = string
  default     = "lb"
}


#########
# Network
#########
variable "vpc_id" {
  description = "vpc id"
  type        = string
}

variable "subnet_ids" {
  description = "The subnet ids for the LB"
  type        = list(string)
}

