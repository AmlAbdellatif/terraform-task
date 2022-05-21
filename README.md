#Project to run nodejs App using Terrraform on AWS, Ansible, Jenkins
# terraform
 create infrastructure with module for network 
 
 
## infrastructure  consists of:
---

   1) 1 VPC
   2) 4 Subnets 2 Public and 2 Private
   3) Internet Gateway
   4) 2 Nat Gateway in the Public Subnets
   5) Bastion host in the Public Subnet
   6) EC2 instance in Private Subnet
   7) Load balancer to expose the private instace
   8) RDS mysql
   9) Redis
   
   
    ![Image](https://github.com/AmlAbdellatif/terraform-task/blob/main/AWS-infra.jpg)
    
## To Apply Terrafom in AWS
 * install IAM user in AWS 
 * create s3 bucket in AWS in eu-central-1 region and change name in backend.tf with new bucket name
 * install terrraform from [Here](https://www.terraform.io/downloads)
 * create works space  ``` terrafom wokspace new <workspace_name> ``` and use it ` terrafom wokspace new <workspace_name> `
 * run using ` terraform init ` & ` terrraform apply `


## Jenkins Configruation
 * install plugins:-
   1-AWS steps
   2-terraform
   3-ansible
 * create credential `with aws` 
 * create a pipeline to run terraform 
 ## Ansible
  * run ansible  ` ansible-playbook apply slave.yml ` to install JDK in your instance
  * in file  ~/.ssh/config then write in it:
  ```
  the ip of the private and public ec2 and aws key file
  ```
  * scp agent.jar <ip_private_ec2>:/home/ubuntu  
 
