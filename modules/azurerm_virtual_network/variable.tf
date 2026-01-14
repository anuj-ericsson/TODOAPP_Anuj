variable "virtual_network_name"{
    type = string
    description = "Name of virtual network"
}

variable "virtual_network_location" {
    type = string
    description = "Location of Virtual network"
}

variable "resource_group_name"{
    type = string
    description = "Name of VNET Resource group"
}

variable "add_space"{
    type = list(string)
    description = "VNET IP address "

}