resource "openstack_compute_instance_v2" "churros" {
  count = "1"
  name = "${var.server_name}"
  image_name = "${var.image_name}"
  availability_zone = "${var.availability_zone}"
  flavor_name = "${var.flavor}"
  security_groups = ["${var.security_group_name}"]
  network {
    name = "${var.network_name}"
  }
  user_data = "${file("script/test.sh")}"
}
