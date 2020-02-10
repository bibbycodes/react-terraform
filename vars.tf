variable "root_domain_name" {
  defualt = "awsterraformreact.com"
}

variable "application_domain" {
  default = "frontend/${var.root_domain_name}"
}