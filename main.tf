provider "aws" {
  profile = "react-terra"
  region = "eu-west-2"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.application_domain}" #subdomain or domain?
  acl = "public-read"
  # below is a multiline string
  policy = <<POLICY
  {
    "Version" : "2012-10-17",
    "Statement" : [{
      "Sid" : "AddPerm",
      "Effect" : "Allow",
      "Principal" : "*",
      "Action" : ["s3:GetObject"],
      "Resource" : ["arn:aws:s3:::${var.application_subdomain}/*"]
    }]
  }
  POLICY
    website {
      index_document = "index.html"
      error_document = "index.html"
    }
}