provider "aws" {
  region = "ap-northeast-2"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name = "webserver-stage"
  db_remote_state_bucket = "tube-terraform-up-and-running"
  db_remote_state_key = "stage/data-stores/mysql/terraform.tfstate"
}