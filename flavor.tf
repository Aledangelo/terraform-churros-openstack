# Create flavor
resource "openstack_compute_flavor_v2" "churros-flavor" {
  provider = openstack.admin
  name  = "${var.flavor_name}"
  ram   = "1024"
  vcpus = "2"
  disk  = "20"
  is_public = true
}
