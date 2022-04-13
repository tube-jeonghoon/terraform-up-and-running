provider "aws" {
  region = "ap-northeast-2"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name = "webserver-prod"
  db_remote_state_bucket = "tube-terraform-up-and-running"
  db_remote_state_key = "prod/data-stores/mysql/terraform.tfstate"
}