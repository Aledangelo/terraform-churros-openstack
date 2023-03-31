#!/bin/bash

terraform destroy
source .adminrc
openstack domain set --disable churros
openstack domain delete churros
echo "domain deleted successfully"
openstack domain list
