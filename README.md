# terraform-churros-openstack

Simple terraform configuration to run an openstack server named Churros.

<div><p align="center"><img  src="https://images.vexels.com/media/users/3/196119/isolated/preview/3d8c98ffd1310736269ce7c2ce3cb7ff-churros-in-bowl-icon-by-vexels.png" /></div>


## Variables
Change values in `terraform.tfvars` and `.adminrc` files with your openstack admin credentials.

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
