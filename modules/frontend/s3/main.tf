resource "aws_s3_bucket" "web_bucket" {
  bucket        = "${var.name}"
  acl           = "${var.bucket_acl}"
  force_destroy = "${var.bucket_destroy}"

  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "Allow Public Access to All Objects",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
                  "Resource": "arn:aws:s3:::${var.name}/*"
        }
    ]
}
POLICY

  website {
    index_document = "${var.index_doc}"
  }
}
