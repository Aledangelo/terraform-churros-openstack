variable "admin_user_name" {}
variable "admin_tenant_name" {}
variable "admin_password" {}
variable "admin_auth_url" {}
variable "admin_project_domain_name" {}
variable "admin_domain_name" {}

variable "user_user_name" {}
variable "user_tenant_name" {}
variable "user_user_password" {}
variable "user_auth_url" {}
variable "user_domain_name" {}
variable "user_project_domain_name" {}

variable "flavor" {
	default = "m1.tiny"
}

variable "availability_zone" {
	default = "nova"
}

# Server
variable "server_name" {
	default = "churros_server"
}

# Image
variable "image_name" {
	default = "churros"
}

variable "image_file_name" {
	default = "cirros-0.4.0-x86_64-disk.img"
}

# Network
variable "network_name" {
	default = "churros_network"
}

variable "subnet_name" {
	default = "churros_subnet"
}

variable "subnet_cidr" {
	default = "10.0.0.0/24"
}

variable "router_name" {
	default = "churros_router"
}

# Public Network
variable "existing_network" {
	default = "public"				# Change this with your public network name
}

variable "existing_subnet" {
	default = "public_subnet"		# Change this with your public subnet name
}

variable "public_router_name" {
	default = "public_router"
}

# Security Group
variable "security_group_name" {
	default = "churros_sec_group"
}

# Keypair
variable "keypair_name" {
	default = "churros_keypair"
}

variable "ssh_key_file" {
	default = ".ssh/id_rsa"
}
