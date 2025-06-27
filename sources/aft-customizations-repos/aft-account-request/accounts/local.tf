locals {
  accounts = [
    {
      name        = "prod-account"
      email       = "prod@example.com"
      ou          = "Production"
      first_name  = "Prod"
      last_name   = "User"
      import      = false
      customization = "prod-custom"
      division    = "ENT"
      cost_center = "1001"
      vended      = "true"
      div_code    = "101"
      bu_code     = "BU001"
      project     = "ProjectX"
      change_requested_by = "dongkyu.lee@cloocus.com"
      change_reason       = "AFT account onboarding"
    },
    {
      name        = "dev-account"
      email       = "dev@example.com"
      ou          = "Development"
      first_name  = "Dev"
      last_name   = "User"
      import      = false
      customization = "dev-custom"
      division    = "ENT"
      cost_center = "1002"
      vended      = "true"
      div_code    = "102"
      bu_code     = "BU002"
      project     = "ProjectY"
      change_requested_by = "kim@cloocus.com"
      change_reason       = "Dev environment for new project"
    }
    # ...필요한 만큼 추가...
  ]
}