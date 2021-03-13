# Week 3 - Infrastructure as Code

The code found in this folder of the repository is a result of the week 3 projects from the CloudSkills series Cloud Native DevOps Bootcamp.

## ARM Template

In the `arm-template` folder there is a template that deploys an Ubuntu VM and related resources.

The template was created from the default when using the tab-fill functionality with the Azure Resource Manager (ARM) Tools extension for VSCode (<https://marketplace.visualstudio.com/items?itemName=msazurermtools.azurerm-vscode-tools>)

### Examples - ARM

Run the following code while in the `arm-template` folder

```
// Log in to Azure CLI
az login

// Create Resource Group
az group create --resource-group "cashewscloudskills" -l eastus

// Create VM
az deployment group create --resource-group "cashewscloudskills" --template-file .\template.json -p adminPassword=""
```

## Terraform

A Terraform script and related modules can be found in the `terraform` folder. The `terraform/main.tf` file deploys an ec2 instance to AWS and a Windows App Service to Azure.

Download Terraform here - https://www.terraform.io/downloads.html

### Examples - Terraform

Run the following code while in the `terraform` folder. Note that this code assumes that the AWS CLI has been installed and configured.
Note that you may need to change some of the resource names to prevent unique name errors.

```
// Initialize Terraform
terraform init

// Log into Azure CLI
az login

// See the planned setup of infrastructure
terraform plan

// Review and confirm setup
terraform apply

// Tear down infrastructure
```

## Terraform Testing

In the folder `terraform-testing` is a module to create an ec2 instance in AWS and set it up as a webserver. Examples are provided and a test can be run to verify that the instance is created and ports are open to view the web page.

### Examples - Terratest

Run the following in the `terraform-testing/test` folder. This assumes that Go (<https://golang.org/>) has been installed.

```
// Install Go packages
go get -t -v

// Run test
go test -v webserver_test.go
```

## Azure Bicep

In the folder `azure-bicep` is a template to create an Azure Storage Account.

### Examples - Bicep

Run the following in the `azure-bicep` folder. This assumes that Bicep is installed (<https://github.com/Azure/bicep>).

```
// Log into Azure
az login

// Build the Bicep file
bicep build main.bicep

// Deploy the created ARM Template
// Optionally change the storage account name and location with parameters
az deployment group create --resource-group RG-Name --template-file .\main.json -p name="csbicep12345"
```
