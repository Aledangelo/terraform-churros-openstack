# terraform-churros-openstack

Simple openstack configuration to run an openstack server named Churros.

<div><p align="center"><img  src="https://images.vexels.com/media/users/3/196119/isolated/preview/3d8c98ffd1310736269ce7c2ce3cb7ff-churros-in-bowl-icon-by-vexels.png" /></div>


## Variables
Change values in `terraform.tfvars` file with your openstack credentials.

## Usage
In order to run an openstack server, you have to run this commands:
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

You can delete your churros server with this command
```
$ terraform destroy
```