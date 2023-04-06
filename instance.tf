# Create and start instance
resource "openstack_compute_instance_v2" "churros" {
    provider = openstack.churros
    count = "1"
    name = "${var.server_name}"
    image_name = "${var.image_name}"
    availability_zone = "${var.availability_zone}"
    flavor_name = "${var.flavor_name}"
    security_groups = ["${var.security_group_name}"]
    network {
        name = "${var.network_name}"
    }
    user_data = "#!/bin/bash\n\necho 'Hello, world!' > /tmp/hello.txt"
    depends_on = [
      openstack_identity_role_assignment_v3.user_admin,
      openstack_images_image_v2.churros,
      openstack_compute_flavor_v2.churros-flavor,
      openstack_networking_secgroup_v2.secgroup,
      openstack_compute_keypair_v2.churros_key,
      openstack_networking_network_v2.network,
      openstack_networking_router_v2.router,
      openstack_networking_router_interface_v2.interface
    ]
}
