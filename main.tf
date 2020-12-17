provider "tfe" {
  hostname = "${var.hostname}"
  token    = "${var.token}"
  version  = "~> 0.15.0"
}
