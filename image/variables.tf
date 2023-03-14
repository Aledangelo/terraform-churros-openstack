variable "image_name" {
	default = "churros"
}

variable "image_path" {
	default = "${path.module}/cirros-0.4.0-x86_64-disk.img"
}
