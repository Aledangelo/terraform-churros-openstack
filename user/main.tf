# Create user and project
resource "openstack_identity_user_v3" "user" {
  name     = "${var.user_name}"
  password = "${var.user_pass}"
}

# Add admin role to user on project
resource "openstack_identity_role_assignment_v3" "example_admin" {
  user_id    = openstack_identity_user_v3.example_user.id
  project_id = openstack_identity_project_v3.project.id
  role_name  = "admin"
}
