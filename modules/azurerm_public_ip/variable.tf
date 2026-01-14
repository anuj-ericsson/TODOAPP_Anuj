variable "public_ip_name"{
    type = string
    description = "Name of public IP"
}

variable "resource_group_name"{
    type = string
    description = "name of Resource group for public IP"
}

variable "resource_group_location"{
    type = string
    description = "Name of public IP location "
}

variable "allocation_method" {
    type = string
    description = "Allocation Method"
}