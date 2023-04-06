# terraform-churros-openstack

Simple terraform configuration to run an openstack server named Churros.

<div><p align="center"><img  src="https://images.vexels.com/media/users/3/196119/isolated/preview/3d8c98ffd1310736269ce7c2ce3cb7ff-churros-in-bowl-icon-by-vexels.png" /></div>

## Configuration

### Install Terraform
Install [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) by following the steps described on the official web site.

### Credentials
Change values in `terraform.tfvars` and `.adminrc` files with your openstack admin credentials.

### Generate SSH keys
Run `ssh-keygen` in order to generate private and public keys. Make sure that the keys are placed in `.ssh/` folder.
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

### Network
The configuration involves the use of two networks, a pre-existing one and one created at the moment via terraform. Both are used in the instance, but you can choose whether to disable one or both by removing out these lines in the `instance.tf` file.
```
...
network {
    name = "${var.existing_network}"
}
network {
	name = "${var.network_name}"
}
...
```

Also, to use the pre-existing network, make sure the network and subnet names in `variables.tf` file are correct. 

```
...

# Public Network
variable "existnig_network" {
	default = "public"				# Change this with your network name
}

variable "existing_subnet" {
	default = "public_subnet"		# Change this with your subnet name
}
...
```

You can check your openstack network and subnet names via the commands:
```
$ openstack network list
$ openstack subnet list
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
