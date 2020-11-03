variable "vpc_cidr_block" {
    type = string
    description = "(optional) describe your variable"
}

variable "vpc_tag" {
    type = string
    description = "(optional) describe your variable"
}

variable "subnet_cidr_block" {
    type = list(string)
    description = "(optional) describe your variable"
}

variable "subnet_tag" {
    type = list(string)
    description = "(optional) describe your variable"
}


