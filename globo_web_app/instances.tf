# INSTANCES #
resource "aws_instance" "nginx_instances" {
  count                  = var.ngix_count
  ami                    = nonsensitive(data.aws_ssm_parameter.ami.value)
  instance_type          = "t2.micro"
  subnet_id              = module.vpc.public_subnets[(count.index % var.vpc_subnet_count)]
  vpc_security_group_ids = [aws_security_group.nginx-sg.id]
  iam_instance_profile   = module.s3_bucket.instance_profile.name
  depends_on = [
    module.s3_bucket
  ]

  user_data = templatefile("${path.module}/startup_script.tpl", {
    s3_bucket_name = module.s3_bucket.web_bucket.id
  })

  tags = merge(local.common_tags, { Name = "${local.name_prefix}-vpc" })
}
