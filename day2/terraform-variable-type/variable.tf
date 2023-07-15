variable "filename" {
	default = "/home/ubuntu/terraform/day2/terraform-variables/devops-automated.txt"
}

variable "content" {
	default = "This is auto generated from a variable"
}
variable "devops_op_trainer" {}

variable "content_map" {
type = map
default = {
"content1" = "it's our 1st content"
"content2" = "it's our 2nd content"
}
}
