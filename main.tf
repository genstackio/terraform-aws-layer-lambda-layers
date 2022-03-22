resource "aws_lambda_layer_version" "lambda_layer" {
  for_each                 = local.layers
  s3_bucket                = lookup(each.value, "bucket", null)
  s3_key                   = lookup(each.value, "key", null)
  layer_name               = lookup(each.value, "name", null)
  compatible_runtimes      = lookup(each.value, "runtimes", null)
  compatible_architectures = lookup(each.value, "architectures", null)
  description              = lookup(each.value, "description", null)
  license_info             = lookup(each.value, "license", null)
}