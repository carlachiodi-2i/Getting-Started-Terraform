
module "s3_bucket" {
  source = "./Modules/globo-web-app-s3"

  bucket_name             = local.s3_bucket_name
  elb_service_account_arn = data.aws_elb_service_account.root.arn
  common_tags             = local.common_tags
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = module.s3_bucket.web_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_object" "website_content" {
  for_each = {
    website = "/website/index.html"
    logo    = "/website/Globo_logo_Vert.png"
  }
  bucket = module.s3_bucket.web_bucket.id
  key    = each.value
  source = ".${each.value}"

  tags = local.common_tags

}

