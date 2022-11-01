module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "mark.conway+sandbox-aft@microfocus.com"
    AccountName               = "sandbox-andy"
    ManagedOrganizationalUnit = "nglz"
    SSOUserEmail              = "mark.conway+sandbox-aft-sso@microfocus.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Owner" = "AndyDale2"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "See if account quota has increased"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
