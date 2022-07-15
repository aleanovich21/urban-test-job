# Homework task for Urban
The code have to deploy kubernetes cluster in Google Cloud and deploy application there


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

### Comments
I did not make it in time task want I wald like to tell about concept that I used when written the code.
I wrote ci/cd pipelines in github actions. I used docker registry for example but I would use Google Container Registry. You can use ARGOCD for control and deploy versions or use  terraform kubernetes provider for kubernetes cluster deploying.

### Limitations:
1. I could improve the terraform code with data types `map` `list`
2. Use Google Cloud Registry
3. Use ARGOCD or Terraform Kubernetes Provider
4. I didn't add prometius-client to deployment

