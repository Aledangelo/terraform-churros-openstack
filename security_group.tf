# Define a security group
resource "openstack_networking_secgroup_v2" "secgroup" {
  provider = openstack.churros
  name        = "${var.security_group_name}"
  description = "Allow all traffic"
  depends_on = [
    openstack_identity_role_assignment_v3.user_admin
  ]
}

# Allow all traffic in the security group
resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_all" {
  provider = openstack.churros
  direction         = "ingress"
  ethertype         = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.secgroup.id
  remote_ip_prefix  = "0.0.0.0/0"
  depends_on = [
    openstack_identity_role_assignment_v3.user_admin
  ]
}
