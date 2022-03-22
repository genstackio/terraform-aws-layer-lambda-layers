locals {
  layers = {for k,v in var.layers: k => {
    name          = "${var.env}-${k}"
    bucket        = var.s3_bucket
    key           = "${var.env}-${k}.zip"
    license       = "ISC"
    runtimes      = v.runtimes
    architectures = v.architectures
    license       = v.license
  }}
}