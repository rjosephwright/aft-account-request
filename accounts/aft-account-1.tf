module "aft_account_1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "aws-aft-account-1@cloudboss.co"
    AccountName  = "cloudboss-account-1"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "joseph@cloudboss.co"
    SSOUserFirstName = "Joseph"
    SSOUserLastName  = "Wright"
  }

  account_tags = {
    "ABC:Owner"       = "joseph@cloudboss.co"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Joseph Wright"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "sandbox-customizations"
}
