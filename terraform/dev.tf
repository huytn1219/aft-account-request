# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "test_account_1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "huytng-121989@amazon.com"
    AccountName  = "dev-1"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "huytng-121989@amazon.com"
    SSOUserFirstName = "Huy"
    SSOUserLastName  = "Nguyen"
  }

  account_tags = {
    "ABC:Owner"       = "huytng-121989@amazon.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "John Doe"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "development-customizations"
}


module "test_account_2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "huytng-12198911@amazon.com"
    AccountName  = "dev-2"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "huytng-12192189@amazon.com"
    SSOUserFirstName = "Huy"
    SSOUserLastName  = "Nguyen"
  }

  account_tags = {
    "ABC:Owner"       = "huytng-121989@amazon.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Huy Nguyen"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "development-customizations-2"
}
