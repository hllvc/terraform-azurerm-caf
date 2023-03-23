#
# Azure Active Directory Applications (original version with service principal combined in one object)
#
#
#
#
module "caf" {
  source  = "aztfmod/caf/azurerm"
  version = "5.3.11"

  global_settings = var.global_settings
  resource_groups = var.resource_groups
  azuread_apps    = var.azuread_apps

}
