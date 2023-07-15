resource "local_file" "devops" {
	filename = "/home/ubuntu/terraform/day1/terraform-local/devops_automated.txt"
	content  = "I want to become a DevOps Engineer who knows Terraform"
}

resource "random_string" "rand_str" {
length = 16
special = true
override_special = "!@#$%^&*(){}[]<>?"
}

output "rand_str" {
value = random_string.rand_str[*].result
}
