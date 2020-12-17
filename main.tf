# VARIABLES
# We putting them here as we want to have ON code file for thw hole test
# ---
variable "hostname" {
  default = "tfe-migtest-2.guselietov.com"
}

variable "org" {
  default = "migrotest"  
}


resource "random_pet" "workspace" { }

# LOCALS
locals {
  workspace_to_create = random_pet.workspace.id
}

provider "tfe" {
  hostname = var.hostname
#  token    = var.token. --> oinly if we really want it
#  for the test we assume it is coming from TFE_TOKEN env var
  version  = "~> 0.15.0"
}

# RESOURCES 

# Creating workspace 1 
resource "tfe_workspace" "ws-test-main" {
  name         = local.workspace_to_create
  organization = var.org
}


# Creating workspace 1 
resource "tfe_workspace" "ws-test-doppelganger" {
  name         = local.workspace_to_create
  organization = var.org
}
