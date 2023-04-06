# Create image
resource "openstack_images_image_v2" "churros" {
  provider = openstack.admin
  name = "${var.image_name}"
  local_file_path = "${path.module}/images/${var.image_file_name}"
  visibility = "public"
  disk_format = "qcow2"
  container_format = "ovf"
}

# Create flavor
resource "openstack_compute_flavor_v2" "churros-flavor" {
  provider = openstack.admin
  name  = "${var.flavor_name}"
  ram   = "1024"
  vcpus = "2"
  disk  = "20"
  is_public = true
}

