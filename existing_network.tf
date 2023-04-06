# Set public network external = true
data "openstack_networking_network_v2" "public_network" {
  provider = openstack.churros
  name = "${var.existing_network}"
  external = true
  depends_on = [
      openstack_identity_role_assignment_v3.user_admin
    ]
}

# Use public subnet
data "openstack_networking_subnet_v2" "public_subnet" {
  provider = openstack.churros
  name       = "${var.existing_subnet}"
  network_id = data.openstack_networking_network_v2.public_network.id
  depends_on = [
      openstack_identity_role_assignment_v3.user_admin
    ]
}

# Define the router resource
resource "openstack_networking_router_v2" "public_router" {
  provider = openstack.churros
  name = "${var.public_router_name}"
  depends_on = [
    openstack_identity_role_assignment_v3.user_admin
  ]
}

# Attach public interface to router
resource "openstack_networking_router_interface_v2" "public_interface" {
  provider = openstack.churros
  router_id   = openstack_networking_router_v2.router.id
  subnet_id   = data.openstack_networking_subnet_v2.public_subnet.id
  depends_on = [
      openstack_identity_role_assignment_v3.user_admin,
      openstack_networking_router_v2.router
    ]
}
