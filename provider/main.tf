# Define required providers
terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.48.0"
    }
  }
}

# Configure the openstack provider
provider "openstack" {
  admin {
    auth_url   = "${var.admin_auth_url}"
    user_name  = "${var.admin_user_name}"
    password   = "${var.admin_password}"
    tenant_name = "${var.admin_project_domain_name}"
    user_domain_name = "${var.admin_domain_name}"
    project_domain_name  = "${var.admin_project_domain_name}"
  }
  user {
    auth_url   = "${var.user_auth_url}"
    user_name  = "${var.user_user_name}"
    password   = "${var.user_password}"
    tenant_name = "${var.project_name}"
    user_domain_name = "${var.domain_name}"
    project_domain_name  = "${var.project_name}"

  }
}
