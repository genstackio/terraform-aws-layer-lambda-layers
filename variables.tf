variable "env" {
  type = string
}
variable "layers" {
  type = map(object({
    license       = string
    runtimes      = list(string)
    architectures = list(string)
  }))
  default = {}
}
variable "s3_bucket" {
  type    = string
}
variable "s3_prefix" {
  type    = string
  default = null
}