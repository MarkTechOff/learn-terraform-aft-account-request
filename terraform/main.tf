module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "mark.conway+sandbox-andy3@microfocus.com"
    AccountName               = "sandbox-andy3"
    ManagedOrganizationalUnit = "nglz"
    SSOUserEmail              = "mark.conway+sandbox-andy3@microfocus.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Owner" = "AndyDale3"
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




# Creating a production account
module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "mark.conway+prod1@microfocus.com"
    AccountName               = "prod1"
    ManagedOrganizationalUnit = "nglz"
    SSOUserEmail              = "mark.conway+prod1@microfocus.com"
    SSOUserFirstName          = "Production"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Owner" = "Mark Conway"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Create a production account"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "production"
}

