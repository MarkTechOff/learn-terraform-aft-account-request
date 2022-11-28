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
module "prod1" {
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


#creating a second production account
module "prod2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "mark.conway+prod2@microfocus.com"
    AccountName               = "prod2"
    ManagedOrganizationalUnit = "nglz"
    SSOUserEmail              = "mark.conway+prod2@microfocus.com"
    SSOUserFirstName          = "Production"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Owner" = "Mark Conway"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Create a production2 account"
  }

  custom_fields = {
    alternate_contact = jsonencode(
      {
        "billing"= {
          "email-address" = "billing@mycompany.com",
          "name"          = "Account Receiveable",
          "phone-number"  = "+11234567890",
          "title"         = "Billing Department"
        },
        "operations"= {
          "email-address" = "ops@mycompany.com",
          "name"          = "Operations 24/7",
          "phone-number"  = "+11234567890",
          "title"         = "DevOps Team"
        },
        "security"= {
          "email-address" = "soc@mycompany.com",
          "name"          = "Security Ops Center",
          "phone-number"  = "+11234567890",
          "title"         = "SOC Team"
        }
      }
    )
    group = "prod"
  }

  account_customizations_name = "production"
}



#creating a second production account
module "sandbox2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "mark.conway+sandbox2@microfocus.com"
    AccountName               = "sandbox2"
    ManagedOrganizationalUnit = "nglz"
    SSOUserEmail              = "mark.conway+sandbox2@microfocus.com"
    SSOUserFirstName          = "Sandbox2"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Owner" = "Mark Conway"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Create sanbox2 account"
  }

  custom_fields = {
    alternate_contact = jsonencode(
      {
        "billing"= {
          "email-address" = "billing@mycompany.com",
          "name"          = "Account Receiveable",
          "phone-number"  = "+11234567890",
          "title"         = "Billing Department"
        },
        "operations"= {
          "email-address" = "ops@mycompany.com",
          "name"          = "Operations 24/7",
          "phone-number"  = "+11234567890",
          "title"         = "DevOps Team"
        },
        "security"= {
          "email-address" = "soc@mycompany.com",
          "name"          = "Security Ops Center",
          "phone-number"  = "+11234567890",
          "title"         = "SOC Team"
        }
      }
    )
    group = "sandbox"
  }

  account_customizations_name = "sandbox"
}
