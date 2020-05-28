variable "access_key" {}
variable "secret_key" {}
variable "public_key_path" {}
variable "private_key_path" {}

variable "staticip" {
  description = "Lightsail Static IP"
  default = "lsstaticip"
}

variable "region" {
  description = "AWS region to launch instances"
  default = "ap-northeast-2"
}

variable "prefix" {
  description = "instance name"
  default = "devops"
}

variable "availability_zone" {
  description = "AWS availabilty zone"
  default = "ap-northeast-2a"
}

variable "blueprint_id" {
  description = "information of instance"
  default = "ubuntu_18_04"
}

variable "bundle_id" {
  description = "instance type"
  default = "micro_2_0"
}
