variable "instancetype" {
  type        = string
  default     = "t2.micro"
  description = "Instance type"
}
variable "publicip" {
  type        = bool
  default     = true
  description = "Assign Public IP to instances"

}

variable "az" {
  type        = string
  default     = "us-east-2a"
  description = "Availabilty zone of the instances"
}

variable "tag" {
  type = map(string)
  default = {
    "Name" = "Terraform Test"
  }
  description = "Tag values for instances"
}

variable "securitygroups" {
  type        = list(string)
  default     = ["sg-0717f6f54f66c8746"]
  description = "Security group ID's that needs to be attached to the instances"
}

variable "vpcid" {
  type        = string
  default     = "vpc-0086b5bcca4500205"
  description = "VPC ID where the resources needs to be provisioned"
}

variable "region" {
  type        = string
  default     = "us-east-2"
  description = "Region where infrastructure has to be provisioned"
}

variable "accesskey" {
  type        = string
  description = "Access key to connect to AWS"
}

variable "secretkey" {
  type        = string
  description = "Secret key to coneect to AWS"
}
