provider "aws" {
  region = var.region
}

provider "aws" {
  alias  = "replica"
  region = var.replica_region
}

module "remote_state" {
  source  = "nozaq/remote-state-s3-backend/aws"
  version = ">= 0.8"

  terraform_iam_policy_create = false
  enable_replication          = true
  override_s3_bucket_name     = true
  s3_bucket_name              = "tf-remote-state"
  s3_bucket_name_replica      = "tf-remote-state-replica"

  providers = {
    aws         = aws
    aws.replica = aws.replica
  }
}
