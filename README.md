# terraform-churros-openstack

Simple terraform configuration to run an openstack server named Churros.

<div><p align="center"><img  src="https://images.vexels.com/media/users/3/196119/isolated/preview/3d8c98ffd1310736269ce7c2ce3cb7ff-churros-in-bowl-icon-by-vexels.png" /></div>


## Variables
Change values in `terraform.tfvars` and `.adminrc` files with your openstack admin credentials.

## Configuration

### Install Terraform
Install [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) by following the steps described on the official site.

### Generate SSH keys
Go in `.ssh/` direcotry and run `ssh-keygen` in order to generate a keypair.
```
$ cd .ssh/
$ ssh-keygen -t rsa
```
The keys must be named `id_rsa` and `id_rsa.pub`, alternatively you have to change the variable name in `variables.tf`.
```
...

# Keypair
variable "keypair_name" {
	default = "churros_keypair"
}

variable "ssh_key_file" {
	default = ".ssh/id_rsa"     <-- Change this variable
}
```

## Usage
In order to run an openstack server, you have to run this commands in the root project's directory:
* First of all, initialize the project
```
$ terraform init
```

* Generate a plan
```
$ terraform plan
```

* In the end, you have to apply the plan
```
$ terraform apply
```

You can delete your churros server running `destroy.sh` script
```
$ ./destroy.sh
```

If you want to improve this repo or create your own terraform project check [this](https://registry.terraform.io/namespaces/terraform-provider-openstack), it could be helpfull.
