#
# Creates a resource group for libarary app in your Azure account.
#
resource "azurerm_resource_group" "libappfinal" {
  name     = var.app_name
  location = var.location
}
