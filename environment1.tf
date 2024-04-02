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
    resource_group_name              = "Dev_Rg1"
    location                         = "East US"
    vm_name                          = "dev-vm1"
    vnet                             = "dev-vnet1"
    vm_size                          = "Standard_DS1_v2"
    key_vault_name                   = "dev-key111-vault"
    nicname                          = "dev-NIC1"
    subnet                           = "dev1-subnet1"
    storage_account_name             = "storage111account"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "LRS"
}

module "module_qa" {
    source = "./modules"
    resource_group_name              = "QA_Rg2"
    location                         = "West US"
    vm_name                          = "qa-vm1"
    vnet                             = "qa-vnet1"
    vm_size                          = "Standard_DS2_v2"
    key_vault_name                   = "qa-key111-vault"
    nicname                          = "qa-NIC1"
    subnet                           = "qa1-subnet1"
    storage_account_name             = "storage111account"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"
}

module "module_preprod" {
    source = "./modules"
    resource_group_name              = "Pre_prod_Rg3"
    location                         = "North Europe"
    vm_name                          = "preprod-vm1"
    vnet                             = "preprod-vnet1"
    vm_size                          = "Standard_DS2_v2"
    key_vault_name                   = "preprod-key111-vault"
    nicname                          = "preprod-NIC1"
    subnet                           = "preprod1-subnet1"
    storage_account_name             = "storage111account"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"

}

module "module_prod" {
    source = "./modules"
    resource_group_name          = "Prod_Rg2"
    location                         = "Central US"
    vm_name                          = "prod-vm1"
    vnet                             = "prod-vnet1"
    vm_size                          = "Standard_DS3_v2"
    key_vault_name                   = "prod-key111-vault"
    nicname                          = "prod-NIC1"
    subnet                           = "Prod1-subnet1"
    storage_account_name             = "storage111account"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"

}
