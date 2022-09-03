#  Bucket name
variable "bucket_name" {
  type        = string
  description = "S3 bucket name"
}
#  ELB service account arn
variable "elb_service_account_arn" {
  type        = string
  description = "ELB service account ARN"
}
# Common tags
variable "common_tags" {
  type        = map(string)
  description = "Map of tags to all resources"
  default     = {}
}
