## Module 4 Azure Cloud Basic

Full task read [here](https://github.com/archeapxa/epam_homeworks/blob/master/4_azure/Azure_home_work.docx)

### Part 1 – Configure application

1. Create a service connection in a Azure DevOps project to your subscription - https://learn.microsoft.com/en-us/azure/devops/pipelines/library/service-endpoints?view=azure-devops&tabs=yaml

2. Find a pet project for the experiments

I used basic java-maven app

3. Build your app locally project via tool. restore/build/run

4. Create an Azure DevOps repo - https://learn.microsoft.com/en-us/azure/devops/repos/git/create-new-repo?view=azure-devops You can use import repository to import from existing source control version like github

![image repo](/4_azure/Screenshots/1-repo.jpg?raw=true)

5. Create a branching policy for you application. Added yourself as a reviewer - https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser As branching strategy use a github flow (It will be applied by default when you strict commit to your main branch)

![image reviewer](/4_azure/Screenshots/2-reviewer.jpg?raw=true)

### Part 2 – Configure a pipeline to deploy infrastructure

1. Create a separate resource group and deploy azure storage account - https://learn.microsoft.com/en-us/azure/storage/common/storage-account-create?tabs=azure-portal

![image storage-acc](/4_azure/Screenshots/3-storage-acc.jpg?raw=true)

2. Create a container with the name “tfstate” and remember the name. use portal settings In this storage account you will be store your tf state file

![image storage-container](/4_azure/Screenshots/4-storage-cont.jpg?raw=true)

#### Terraform preparation

1. Create another folder to store devops code

2. Create a folder terraform

3. Add app service implementation - https://learn.microsoft.com/en-us/azure/app-service/provision-resource-terraform

4. Integrate application insights with app service

5. Updated backend “azurerm” according to the guide - https://learn.microsoft.com/en-us/azure/developer/terraform/store-state-in-azure-storage?tabs=azure-cli

![image terraform-tf](/4_azure/Screenshots/5-terraform-tf.jpg?raw=true)

6. Run az login or Connect-AzAccount to connect the azure subscription from your local

7. Run terraform apply to deploy infrastructure

![image tf-apply](/4_azure/Screenshots/6-terraform-apply.jpg?raw=true)

![image tf-result](/4_azure/Screenshots/7-tf-infra-created.jpg?raw=true)

![image tf-state-azurerm](/4_azure/Screenshots/8-tfstate-saved.jpg?raw=true)

#### Create a terraform pipeline

1. Create a yaml pipeline with the following steps: terraform install, terraform init, terraform plan/apply. Plan is an optional one

2. Inside yaml pipeline add trigger to main branch. The scenario – when main is updated, pipeline should run automatically - https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines

3. Added 3 steps – terraform install, terraform init, terraform plan/apply. Plan is an optional one. You may add it as 4th step

![image tf-pipeline](/4_azure/Screenshots/9-tf-pipeline-yml.jpg?raw=true)

![image tf-pipeline-run](/4_azure/Screenshots/10-tf-pipeline-run.jpg?raw=true)

### Part 3 – Create a deploy pipeline to app service

1. Add yml pipeline to the application folder

2. Your pipeline structure should contain 2 stages. 1st – build, create zip archieve, and publish an artifact. 2nd – download an artifact and deploy it to azure app service

3. To deploy .zip to app service use azure app service deployment task

![image deploy-pipeline-code1](/4_azure/Screenshots/11-deploy-pipeline-1.jpg?raw=true)

![image deploy-pipeline-code2](/4_azure/Screenshots/12-deploy-pipeline-2.jpg?raw=true)

![image deploy-pipeline-run](/4_azure/Screenshots/13-deploy-pipeline-run.jpg?raw=true)
