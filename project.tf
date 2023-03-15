
## Pay Attention! openstack_identity_domain_v3 does not exist
# Create domain
# resource "openstack_identity_domain_v3" "domain" {
#   name = "${var.domain_name}"
# }

# Create project
# resource "openstack_identity_project_v3" "project" {
#   name       = "${var.project_name}"
#   domain_id  = openstack_identity_domain.id
# }