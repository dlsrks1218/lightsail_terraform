<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
# lightsail_terraform
>>>>>>> 75071954d22b911662d4d007f6578547033e67bb
=======
# lightsail_terraform
>>>>>>> 75071954d22b911662d4d007f6578547033e67bb
=======
# lightsail_terraform
>>>>>>> 75071954d22b911662d4d007f6578547033e67bb
=======
# lightsail_terraform
>>>>>>> 75071954d22b911662d4d007f6578547033e67bb
