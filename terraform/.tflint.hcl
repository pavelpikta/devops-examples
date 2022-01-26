config {
  plugin_dir = "~/.tflint.d/plugins"

  module              = true
  force               = false
  disabled_by_default = false

  ignore_module = {
    "terraform-aws-modules/vpc/aws"            = false
    "terraform-aws-modules/security-group/aws" = false
    "terraform-aws-modules/ec2-instance/aws"   = false
  }

}

plugin "aws" {
  enabled = true
  version = "0.11.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
}
