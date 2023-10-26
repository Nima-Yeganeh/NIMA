terraform >> for server or infra provisioning and service install
example >> AWS >> EC2 Instance Install >> and Docker/Kuber Install on them

terraform init
terraform plan
terraform apply
terraform destroy
terraform validate
terraform state list
terraform state show
terraform state rm

# how to install >>
# Download and extract
wget https://releases.hashicorp.com/terraform/X.Y.Z/terraform_X.Y.Z_linux_amd64.zip
unzip terraform_X.Y.Z_linux_amd64.zip
# Move the binary to a directory in your PATH
sudo mv terraform /usr/local/bin/
export PATH=$PATH:/path/to/terraform/directory

# Some common resource types that Terraform can provision include:
# Compute Resources:
Virtual Machines (VMs)
Instances (e.g., EC2 instances, Azure VMs, etc.)
Containers (e.g., Docker containers)

# Networking:
Virtual Networks
Subnets
Firewalls
Load Balancers

# Storage:
Blob storage
Object storage
Block storage

# Databases:
Database Instances (e.g., RDS, Cosmos DB, etc.)
Database Users, Permissions, etc.

# Security:
Security Groups
Access Control Lists (ACLs)
Encryption settings

# Identity and Access Management (IAM):
Users
Groups
Roles
Policies

# Monitoring and Logging:
Logging configurations
Monitoring alerts and dashboards

# Provider-specific Resources:
Each cloud provider has its own set of specific resources that Terraform can manage.

