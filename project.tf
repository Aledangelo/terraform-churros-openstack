# Create domain
resource "openstack_identity_project_v3" "domain" {
  provider = openstack.admin
  name = "${var.user_domain_name}"
  is_domain = true
  enabled = true
}

# Create project
resource "openstack_identity_project_v3" "project" {
  provider = openstack.admin
  name       = "${var.user_project_domain_name}"
  domain_id  = openstack_identity_project_v3.domain.id
}
