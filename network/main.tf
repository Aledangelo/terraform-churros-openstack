# Define the network resource
resource "openstack_networking_network_v2" "network" {
  name = "${var.network_name}"
}

# Define the subnet resource
resource "openstack_networking_subnet_v2" "subnet" {
  name       = "${var.subnet_name}"
  network_id = openstack_networking_network_v2.network.id
  cidr       = "${var.subnet_cidr}"
}

# Define the router resource
resource "openstack_networking_router_v2" "router" {
  name = "${var.router_name}"
}

# Attach the subnet to the router
resource "openstack_networking_router_interface_v2" "interface" {
  router_id   = openstack_networking_router_v2.router.id
  subnet_id   = openstack_networking_subnet_v2.subnet.id
}
