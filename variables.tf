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

variable "router_name" {
	default = "churros_router"
}

variable "public_subnet" {
	default = "public_subnet"		# Change this with your public subnet name
}

variable "subnet_name" {
	default = "churros_subnet"
}

variable "subnet_cidr" {
	default = "10.0.0.0/24"
}

# Security Group
variable "security_group_name" {
	default = "churros_sec_group"
}

# Project
# variable "project_name" {
# 	default = "churros_project"
# }

# variable "domain_name" {
# 	default = "churros_domain"
# }

# Keypair
variable "keypair_name" {
	default = "churros_keypair"
}

variable "ssh_key_file" {
	default = ".ssh/id_rsa"
}
