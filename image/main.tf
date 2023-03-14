resource "openstack_images_image_v2" "churros" {
  name = "${var.image_name}"
  local_file_path = "${var.image_path}"
  disk_format = "qcow2"
  container_format = "ovf"
}

