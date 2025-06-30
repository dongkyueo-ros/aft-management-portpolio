# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

module "account-request" {
  for_each = { for account in local.accounts : account.name => account }

  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountName               = each.value.name
    AccountEmail              = each.value.email
    ManagedOrganizationalUnit = each.value.ou
    SSOUserEmail              = each.value.email
    SSOUserFirstName          = each.value.first_name
    SSOUserLastName           = each.value.last_name
    ImportAccount             = each.value.import
  }

  account_tags = {
    "ABC:Environment" = each.value.environment
    "ABC:Owner"       = each.value.email
    "ABC:Division"    = each.value.division
    "ABC:CostCenter"  = each.value.cost_center
    "ABC:Vended"      = each.value.vended
    "ABC:DivCode"     = each.value.div_code
    "ABC:BUCode"      = each.value.bu_code
    "ABC:Project"     = each.value.project
  }

  change_management_parameters = {
    change_requested_by = each.value.change_requested_by
    change_reason       = each.value.change_reason
  }

  account_customizations_name = each.value.customization
}


# module "sandbox_account_01" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail = "cloocus.test@amazon.com"
#     AccountName  = "sandbox-account-01"
#     # Syntax for top-level OU
#     ManagedOrganizationalUnit = "Sandbox"
#     # Syntax for nested OU
#     # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
#     SSOUserEmail     = "cloocus.test@amazon.com"
#     SSOUserFirstName = "cloocus"
#     SSOUserLastName  = "test"
#   }

#   account_tags = {
#     "ABC:Owner"       = "cloocus.test@amazon.com"
#     "ABC:Division"    = "ENT"
#     "ABC:Environment" = "Dev"
#     "ABC:CostCenter"  = "123456"
#     "ABC:Vended"      = "true"
#     "ABC:DivCode"     = "102"
#     "ABC:BUCode"      = "ABC003"
#     "ABC:Project"     = "123456"
#   }

#   change_management_parameters = {
#     change_requested_by = "dklee"
#     change_reason       = "testing the account vending process"
#   }

#   custom_fields = {
#     custom1 = "a"
#     custom2 = "b"
#   }

#   account_customizations_name = "sandbox-customizations"
# }