# IaC_proj
*Infrastructure as Code Project*

*Provision Resource of AWS with Terraform, Docker*

## Tech Stack
* AWS Ligthsail
* Terraform
* Docker

## Instruction
### Configure Variables - Terraform
* rename install.sh.example > install.sh
* change variables of install.sh for your project - <AWS_ACCESS_KEY>, <AWS_SECRET_KEY>, <REGION>, <SHAPE_OF_OUTPUT>
* rename terraform.tfvars.example > terraform.tfvars
* change variables of terraform.tfvars for you project - 
### Instance Initiate - Terraform
```
cd /terraform
terraform init
terraform plan
terraform apply -auto-approve
```

### Initiated Instance State
* Lightsail Instance(Ubuntu 18.04)
* Static Ip Attached
* Docker, Docker Compose Installed

### Instance Destroy - Terraform
```
terraform destroy
```
=======
