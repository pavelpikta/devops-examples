# Configure the GitLab Provider
provider "gitlab" {}

data "gitlab_project" "example" {
  id = 01
}
