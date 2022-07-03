#Grupo de recursos

resource "azurerm_resource_group" "rg" {
  name     = "sgd_caso2_rgp"
  location = "westeurope"
}