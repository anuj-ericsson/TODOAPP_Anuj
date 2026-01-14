module "resource_group" {
  source                  = "../modules/azurerm_resource_group"
  resource_group_name     = "rg-todoapp"
  resource_group_location = "East US"
}

module "virtual_network" {
  source                   = "../modules/azurerm_virtual_network"
  virtual_network_name     = "vnet-todoapp"
  virtual_network_location = "East US"
  resource_group_name      = "rg-todoapp"
  add_space                = ["10.0.0.0/24"]
  depends_on               = [module.resource_group]
}

module "frontend_subnet" {
  source              = "../modules/azurerm_subnet"
  subnet_name         = "frontend-subnet"
  resource_group_name      = "rg-todoapp"
  virtual_network_name =    "vnet-todoapp"
  address_prefixes        = ["10.0.2.0/24"]
  depends_on          = [module.virtual_network]

}

module "public_ip_frontend" {
  source                  = "../modules/azurerm_public_ip"
  public_ip_name          = "public-ip-frontend"
  resource_group_name     = "rg-todoapp"
  resource_group_location = "East US"
  allocation_method       = "Static"
}