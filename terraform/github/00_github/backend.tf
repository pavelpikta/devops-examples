terraform {
  cloud {
    organization = "pavelpikta"

    workspaces {
      name = "github-base"
    }
  }
}
