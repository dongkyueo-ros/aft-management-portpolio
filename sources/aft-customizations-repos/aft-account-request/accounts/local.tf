#############################################
# Account Create Request - Terraform Module
#############################################

locals {
  accounts = [

    #############################################
    # 사내 계정
    #############################################
    {
      # Account Request
      name                = "prod-account"
      email               = "prod@example.com"
      ou                  = "Production"
      first_name          = "Prod"
      last_name           = "User"
      import              = false
      customization       = "internal-core"

      # Account Customizations Audit
      change_requested_by = "test1@gmail.com"
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

    #############################################
    # 고객사 공통 계정정
    #############################################
    {
      # Account Request
      name                = "dev-account"
      email               = "dev@example.com"
      ou                  = "Development"
      first_name          = "Dev"
      last_name           = "User"
      import              = false
      customization       = "customer-core"

      # Account Customizations Audit
      change_requested_by = "test2@gmail.com"
      change_reason       = "AFT account onboarding"

      # Account Tags
      environment         = "Dev"
      division            = "ENT"
      cost_center         = "1002"
      vended              = "true"
      div_code            = "102"
      bu_code             = "BU002"
      project             = "AFT-TEST-PROJECT"
    }
  ]
}