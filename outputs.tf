output "layers" {
  value = {for k, v in local.layers: k => {
    name       = v.name
    arn        = aws_lambda_layer_version.lambda_layer[k].arn
    layer_name = aws_lambda_layer_version.lambda_layer[k].layer_name
  }}
}