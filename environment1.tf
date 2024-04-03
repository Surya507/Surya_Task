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
    vm_name                          = "dev-vm156"
    vnet                             = "dev-vnet156"
    vm_size                          = "Standard_DS1_v2"
    key_vault_name                   = "dev-key156-vault"
    nicname                          = "dev-NIC156"
    subnet                           = "dev1-subnet156"
    storage_account_name             = "storage156account24"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "LRS"
}

module "module_qa" {
    source = "./modules"
    resource_group_name              = "QA_Rg2"
    location                         = "West US"
    vm_name                          = "qa-vm1485"
    vnet                             = "qa-vnet142"
    vm_size                          = "Standard_DS2_v2"
    key_vault_name                   = "qa-key4578-vault"
    nicname                          = "qa-NIC1"
    subnet                           = "qa1-subnet1641"
    storage_account_name             = "storage5489account57"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"
}

module "module_preprod" {
    source = "./modules"
    resource_group_name              = "Pre_prod_Rg3"
    location                         = "North Europe"
    vm_name                          = "preprod-vm25961"
    vnet                             = "preprod-vnet17954"
    vm_size                          = "Standard_DS2_v2"
    key_vault_name                   = "preprod-key457952-vault"
    nicname                          = "preprod-NIC1457"
    subnet                           = "preprod1-subnet8647"
    storage_account_name             = "storage46892account"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"

}

module "module_prod" {
    source = "./modules"
    resource_group_name          = "Prod_Rg2"
    location                         = "Central US"
    vm_name                          = "prod-vm7846"
    vnet                             = "prod-vnet752"
    vm_size                          = "Standard_DS3_v2"
    key_vault_name                   = "prod-key7845-vault"
    nicname                          = "prod-NIC785"
    subnet                           = "Prod1-subnet5752"
    storage_account_name             = "storage24582account"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"

}
