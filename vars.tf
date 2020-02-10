variable "root_domain_name" {
  defualt = "awsterraformreact.com"
}

variable "application_domain" {
  default = "client/${var.root_domain_name}"
}