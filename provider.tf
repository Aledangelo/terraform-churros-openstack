# Configure the openstack provider with admin user
provider "openstack" {
  alias = "admin"
  auth_url   = "${var.admin_auth_url}"
  user_name  = "${var.admin_user_name}"
  password   = "${var.admin_password}"
  tenant_name = "${var.admin_tenant_name}"
  user_domain_name = "${var.admin_domain_name}"
  project_domain_name  = "${var.admin_project_domain_name}"
}

# Configure the openstack provider with churros user
provider "openstack" {
  alias = "churros"
  auth_url   = "${var.user_auth_url}"
  user_name  = "${var.user_user_name}"
  password   = "${var.user_user_password}"
  tenant_name = "${var.user_tenant_name}"
  user_domain_name = "${var.user_domain_name}"
  project_domain_name  = "${var.user_project_domain_name}"
}