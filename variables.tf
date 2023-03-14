variable "openstack_admin_user_name" {}
variable "openstack_admin_tenant_name" {}
variable "openstack_admin_password" {}
variable "openstack_admin_auth_url" {}

variable "openstack_user_name" {}
variable "openstack_tenant_name" {}
variable "openstack_password" {}
variable "openstack_auth_url" {}


variable "flavor" {
	default = "m1.tiny"
}


variable "availability_zone" {
	default = "nova"
}
