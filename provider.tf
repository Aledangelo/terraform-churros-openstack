# Configure the openstack provider
provider "openstack" {
  auth_url   = "${var.admin_auth_url}"
  user_name  = "${var.admin_user_name}"
  password   = "${var.admin_password}"
  tenant_name = "${var.admin_tenant_name}"
  user_domain_name = "${var.admin_domain_name}"
  project_domain_name  = "${var.admin_project_domain_name}"
}