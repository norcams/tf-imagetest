# Terraform NREC image test

Read more at https://www.terraform.io/

## Requirements

* terraform in $PATH
* access to a project in a region in NREC
* OS_ env or clouds.yaml with access to the project

## Setup

Create your own local.tfvars. Use the example and edit `allow_ssh_from_v6` to allow yourself access to the instances.
*Tip*: Use one tfvars per region

## Run

```
cd tf-imagetest
terraform init
terraform get
terraform plan -var-file local.tfvars
terraform apply -var-file local.tfvars
```

## Ansible inventory

Your can get an ansible inventory file for more testing by running
```
terraform output -raw inventory_v6 > <path-to-file>
```

## Destroy
```
cd tf-imagetest
terraform destroy -var-file local.tfvars
```

## Upgrade providers
```
cd tf-imagetest
terraform init -upgrade
```

## Testing

Tested 2025-02-19 with:

```
$ terraform --version
Terraform v1.10.5
on linux_amd64
+ provider registry.terraform.io/hashicorp/template v2.2.0
+ provider registry.terraform.io/terraform-provider-openstack/openstack v3.0.0
```

