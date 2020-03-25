#s3_bucket.web_bucket
variable "name" {}
variable "bucket_acl" { default = "public-read" }
variable "bucket_destroy" { default = true }
variable "index_doc" { default = "index.html" }
