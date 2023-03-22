#
# Azure Active Directory Applications (original version with service principal combined in one object)
#
#
#

# Module for the CAf variable azuread_applications
module "azuread_applications_v1" {
  source   = "./azuread_applications_v1"
  # for_each = local.azuread.azuread_applications

  azuread_api_permissions = try(local.azuread.azuread_api_permissions[each.key], {})
  client_config           = local.client_config
  global_settings         = local.global_settings
  settings                = each.value
  user_type               = var.user_type
}

output "azuread_applications" {
  value = module.azuread_applications_v1
}
