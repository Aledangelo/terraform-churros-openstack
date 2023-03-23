# Create user
resource "openstack_identity_user_v3" "user" {
  provider = openstack.admin
  name     = "${var.user_user_name}"
  password = "${var.user_user_password}"
  # default_project_id = openstack_identity_project_v3.project.id
  domain_id = openstack_identity_project_v3.domain.id
}

# Define user role
data "openstack_identity_role_v3" "admin_role" {
  provider = openstack.admin
  # domain_id = openstack_identity_project_v3.domain.id
  name = "admin"
  /*
  depends_on = [
    openstack_identity_project_v3.domain
  ]
  */
}

# Add admin role to user on project
resource "openstack_identity_role_assignment_v3" "user_admin" {
  provider = openstack.admin
  user_id    = openstack_identity_user_v3.user.id
  project_id = openstack_identity_project_v3.project.id
  role_id = data.openstack_identity_role_v3.admin_role.id
  depends_on = [
    # openstack_identity_role_v3.admin_role,
    openstack_identity_user_v3.user,
    openstack_identity_project_v3.project,
    openstack_identity_project_v3.domain
  ]
}
