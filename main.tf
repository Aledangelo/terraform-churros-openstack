resource "openstack_compute_instance_v2" "churros" {
  count = "1"
  name = "churros_server"
  image_name = "churros"
  availability_zone = "${var.availability_zone}"
  flavor_name = "${var.flavor}"
  security_groups = ["my_security_group"]
  network {
    name = "my_network"
  }
  user_data = "${file("script/test.sh")}"
}
