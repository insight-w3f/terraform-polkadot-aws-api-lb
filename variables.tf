variable "create" {
  description = "Bool to create the resources"
  type        = bool
  default     = true
}

########
# Label
########
variable "environment" {
  description = "The environment"
  type        = string
  default     = "dev"
}

variable "namespace" {
  description = "The namespace to deploy into"
  type        = string
  default     = "polkadot"
}

variable "stage" {
  description = "The stage of the deployment"
  type        = string
  default     = "test"
}

variable "network_name" {
  description = "The network name, ie kusama / mainnet"
  type        = string
  default     = "kusama"
}

variable "owner" {
  description = "Owner of the infrastructure"
  type        = string
  default     = "insight-w3f"
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

