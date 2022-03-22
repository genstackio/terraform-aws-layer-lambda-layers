locals {
  layers = {for k,v in var.layers: k => {
    name          = "${var.env}-${k}"
    bucket        = var.s3_bucket
    key           = "${var.s3_prefix != null ? var.s3_prefix : ""}${var.env}-layer-${k}.zip"
    license       = "ISC"
    runtimes      = v.runtimes
    architectures = v.architectures
    license       = v.license
  }}
}