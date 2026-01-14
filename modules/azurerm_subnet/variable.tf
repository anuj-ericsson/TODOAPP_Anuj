variable subnet_name{
    type = string
    description = "Name of the azurerm_subnet"
}

variable resource_group_name{
    type = string
    description = "name of the resource group"
}

variable virtual_network_name{
    type = string 
    description = "Name of virtual network to which subnet will be associated "
}

variable address_prefixes{
    type = list(string)
    description = "address prefix"
}