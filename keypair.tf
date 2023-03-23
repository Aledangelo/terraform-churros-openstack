# Create a keypair using existing public key located in .ssh/ dir
resource "openstack_compute_keypair_v2" "churros_key" {
    provider = openstack.churros
    name = "${var.keypair_name}"
    public_key = "${file("${var.ssh_key_file}.pub")}"
    user_id = openstack_identity_user_v3.user.id
    depends_on = [
      openstack_identity_role_assignment_v3.user_admin,
      openstack_identity_project_v3.domain
    ]
}