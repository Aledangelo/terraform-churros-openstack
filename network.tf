# Set public network external = true
/*
resource "openstack_networking_network_v2" "public_network" {
  provider = openstack.admin
  name = "public"
  external = true
}
*/

# Define the network resource
resource "openstack_networking_network_v2" "network" {
  provider = openstack.churros
  name = "${var.network_name}"
  tenant_id = openstack_identity_project_v3.project.id
  shared = true
  segments {
      physical_network = "physnet1"
      network_type = "flat"
  }
  depends_on = [
    openstack_identity_role_assignment_v3.user_admin,
    openstack_identity_project_v3.project
  ]
}

# Define the subnet resource
resource "openstack_networking_subnet_v2" "subnet" {
  provider = openstack.churros
  name       = "${var.subnet_name}"
  network_id = openstack_networking_network_v2.network.id
  cidr       = "${var.subnet_cidr}"
  depends_on = [
    openstack_identity_role_assignment_v3.user_admin
  ]
}

# Use public subnet
/*
resource "openstack_networking_subnet_v2" "public_subnet" {
  provider = openstack.churros
  name       = "${var.public_subnet}"
  network_id = openstack_networking_network_v2.public_network.id
  depends_on = [
      openstack_identity_role_assignment_v3.user_admin
    ]
}
*/

# Define the router resource
resource "openstack_networking_router_v2" "router" {
  provider = openstack.churros
  name = "${var.router_name}"
  depends_on = [
    openstack_identity_role_assignment_v3.user_admin
  ]
}

# Attach the subnet to the router
resource "openstack_networking_router_interface_v2" "interface" {
  provider = openstack.churros
  router_id   = openstack_networking_router_v2.router.id
  subnet_id   = openstack_networking_subnet_v2.subnet.id
  depends_on = [
    openstack_identity_role_assignment_v3.user_admin
  ]
}

# Attach public interface to router
/*
resource "openstack_networking_router_interface_v2" "public_interface" {
  provider = openstack.churros
  router_id   = openstack_networking_router_v2.router.id
  subnet_id   = openstack_networking_subnet_v2.public_subnet.id
  depends_on = [
      openstack_identity_role_assignment_v3.user_admin
    ]
}
*/
