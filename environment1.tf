terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.90.0"
    }
  }
}

module "module_dev" {
    source = "./modules"
    resource_group_name              = "dev-resource-group"
    location                         = "East US"
    vm_name                          = "dev-vm"
    vnet                             = "dev-vnet"
    vm_size                          = "Standard_DS1_v2"
    key_vault_name                   = "dev-key121-vault"
    nicname                          = "dev-NIC"
    subnet                           = "dev-subnet1"
    storage_account_name             = "storageacc90957"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "LRS"
}

module "module_qa" {
    source = "./modules"
    resource_group_name              = "qa-resource-group"
    location                         = "West US"
    vm_name                          = "qa-vm"
    vnet                             = "qa-vnet"
    vm_size                          = "Standard_DS2_v2"
    key_vault_name                   = "qa-key121-vault"
    nicname                          = "qa-NIC"
    subnet                           = "qa-subnet1"
    storage_account_name             = "storageacc91957"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"
}

module "module_preprod" {
    source = "./modules"
    resource_group_name              = "preprod-resource-group"
    location                         = "North Europe"
    vm_name                          = "preprod-vm"
    vnet                             = "preprod-vnet"
    vm_size                          = "Standard_DS2_v2"
    key_vault_name                   = "preprod-key121-vault"
    nicname                          = "preprod-NIC"
    subnet                           = "preprod-subnet1"
    storage_account_name             = "storageacc92957"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"

}

module "module_prod" {
    source = "./modules"
    resource_group_name          = "prod-resource-group"
    location                         = "Central US"
    vm_name                          = "prod-vm"
    vnet                             = "prod-vnet"
    vm_size                          = "Standard_DS3_v2"
    key_vault_name                   = "prod-key121-vault"
    nicname                          = "prod-NIC"
    subnet                           = "Prod-subnet1"
    storage_account_name             = "storageacc93957"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"

}
