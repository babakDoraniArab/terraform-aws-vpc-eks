## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.71 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.71 |

# How to configure VPC and EKS from scratch
    
with this package you can have VPC and EKS from scratch. just clone it and then put the following commands. please be sure about your aws cli profile.

`terraform init` 

`terraform fmt`

`terraform validate` 

`terraform apply`

### create kub config 
check your kube config first 

`cat ~/.kube/config`

create your context 

`aws eks --region eu-west-1 update-kubeconfig --name eks --profile default`

### you can find the k8s configuration on k8s folder 
k8s -> app.yaml 
you have to apply it with kubectl command 
and know you check your cluster