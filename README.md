# Terraform UH-IaaS image test 

Read more at https://www.terraform.io/

## Requirements

* terraform in $PATH
* access to a project in a region in UH-IaaS
* OS env or clouds.yaml with access to the project

## Setup

Create your own local.tfvars. Use the example and edit `allow_ssh_from_v6` to allow yourself access to the instances.
*Tip*: Use one tfvars per region

## Run

```
cd tf-imagetest
terraform init
terraform get
terraform plan -var-file local.tfvars
terraform apply -var-file local.ftvars
```

## Ansible inventory

Your can get an ansible inventory file for more testing by running
```
terraform output inventory_v6 > <path-to-file>
```

## Destroy
```
cd tf-imagetest
terraform destroy -var-file local.ftvars
```

