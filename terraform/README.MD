### Terraform
1. You must create two buckets for state files and named them 
   
   `urban-test-tfstate`
   `urban-project-tfstate`

2. Run gcloud auth application-default login command.
   
   `gcloud auth application-default login`

3. Initialze terraform from `terraform/dev/project` directory. Enable API.
   
   `terraform init`

   Apply terraform

   `terraform apply`

4. Initialize terraform from `terraform/dev/k8s` directory. Create VPC and Kubernetes cluster.
   
   `terraform init`

   Apply terraform

   `terraform apply`

5. Delete terraform `terraform/dev/k8s` directory. Create VPC and Kubernetes cluster.
   
   `terraform destroy`

6. Delete terraform `terraform/dev/project` directory. Create VPC and Kubernetes cluster.
   
   `terraform destroy`


