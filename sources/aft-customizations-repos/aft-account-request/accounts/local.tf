#############################################
# Account Create Request - Terraform Module
#############################################

locals {
  accounts = [
    {
      # Account Request
      name                = "prod-account"
      email               = "prod@example.com"
      ou                  = "Production"
      first_name          = "Prod"
      last_name           = "User"
      import              = false
      customization       = "prod-custom"

      # Account Customizations Audit
      change_requested_by = "dongkyu9303@gmail.com"
      change_reason       = "AFT account onboarding"

      # Account Tags
      environment         = "Prod"
      division            = "ENT"
      cost_center         = "1001"
      vended              = "true"
      div_code            = "101"
      bu_code             = "BU001"
      project             = "AFT-TEST-PROJECT"
    },
    {
      # Account Request
      name                = "dev-account"
      email               = "dev@example.com"
      ou                  = "Development"
      first_name          = "Dev"
      last_name           = "User"
      import              = false
      customization       = "dev-custom"

      # Account Customizations Audit
      change_requested_by = "kim@cloocus.com"
      change_reason       = "AFT account onboarding"

      # Account Tags
      division            = "ENT"
      cost_center         = "1002"
      vended              = "true"
      div_code            = "102"
      bu_code             = "BU002"
      project             = "AFT-TEST-PROJECT"
    }
  ]
}