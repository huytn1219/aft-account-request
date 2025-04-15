# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "aft-import-ct-management" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "huytng+ct+aft@amazon.com"
    AccountName  = "huytng-aft"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Root"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "huytng+ct+aft@amazon.com"
    SSOUserFirstName = "Huy"
    SSOUserLastName  = "Nguyen"
  }

  account_tags = {
    owner       = "huytng"
  }

  change_management_parameters = {
    change_requested_by = "Huy Nguyen"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    tags = jsonencode({
        env = "shared"
    })
  }

  account_customizations_name = "aft-ct-mgmt"
}

module "aft-security-audit" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "huytng+audit123@amazon.com"
    AccountName  = "Audit"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Security"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "huytng+audit123@amazon.com"
    SSOUserFirstName = "Huy"
    SSOUserLastName  = "Nguyen"
  }

  account_tags = {
    owner       = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Huy Nguyen"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    tags = jsonencode({
        env = "shared"
    })
  }

  account_customizations_name = "aft-security"
}

