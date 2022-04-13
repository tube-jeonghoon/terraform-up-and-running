variable "cluster_name" {
  type        = string
  description = "The name to use for all the cluster resources"
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 80
}

variable "db_remote_state_bucket" {
  type        = string
  description = "The name of the S3 bucket for the database's remote state"
}

variable "db_remote_state_key" {
  type        = string
  description = "The path for the database's remote state in S3"
}
