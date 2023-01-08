variable "region" {
  description = "region in which VM is created"
  type        = string
  default     = "ap-south-1"
}

variable "ami" {
  description = "ami number"
  type        = string
  default     = ""
}

variable "access_key" {
  description = "access key of the user"
  type        = string
  default     = ""
}

variable "secret_key" {
  description = "secret key of the user"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "type of the instance"
  type        = string
  default     = "t2.micro"
}

variable "cidr_block" {
  description = "IP address"
  type        = string
  default     = ""
}
