# Configure the GitHub Provider
provider "github" {}

data "github_ip_ranges" "this" {}
