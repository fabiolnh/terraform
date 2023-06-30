# Terraform
- IaC - Infrastructure as Code
- Created by Hashcorp, developed in Golang
- Automate how we can provision our infrastructure
- You create a manifest (a configuration file)
- It has a lot of providers, this way you can connect with a lot of providers (google cloud, aws, kubernetes, etc)
- Important points:
  * Idempotence: It is a way that we do not do a task more than one time. (ex: if the light is on, you cannot turn the light on again). It guarantees that the resource will not be created more than one time. Two ways to work:
    1) Imperativity: you do not specify what you want as a final result. You say to terraform to execute steps by steps
    2) Declarative: you specify what you want as a final result. It will compare what you have now and what will be at the final point (action plan). If you agree, terraform will execute.
  * Difference between Terraform and Ansible (OBS: in both you can do the same, however, some things terraform do better and other things ansible do better. So, many people use both together):
    1) Terraform: Better for provisioning the infrastructure (ex: create 10 EC2, 1 VPC, a subnet and security group, etc)
    2) Ansible: Better for managing and configuring automation, installations, etc. (ex: change config files, configure the servers, etc)
- Everything you do on terraform, it is annotated in a file. This way, when you do a change in this configuration, it will compare with it. Sometimes it does not change, it destroys and creates again. That's why it is important to see the action plan before executing it.
- If you do not have the current state in the file, terraform will not know the current state of your cloud. So, this way it will not work perfectly. You have to keep this file. You have to put this file in a S3 bucket, this way you can share with others that will deploy new changes.


