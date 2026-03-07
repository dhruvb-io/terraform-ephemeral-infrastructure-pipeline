variable "ami" {
  type = string
  description = "Amazon Machine Image"
}
variable "instance_type" {
  type = string
  description = "type of instance"
  default = "t3.micro"
}
variable "region" {
  type = string
  description = "region"
}