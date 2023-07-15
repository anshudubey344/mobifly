resource "local_file" "devops" {
	filename = "/home/ubuntu/terraform/day2/terraform-variables/devops_test.txt"
	content = "This is DevOps test file"
}

resource "local_file" "devops-var" {
	filename = var.filename
	content = var.content
}

output "devops_op_trainer" {
value = var.devops_op_trainer
}
