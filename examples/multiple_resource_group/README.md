# Azure Resource Group

This folder contains a set of Terraform manifest for deploying five resource group. A resource group is a container that holds related resources for an Azure solution.

The end result of this example should be five resource group named:

- 'jortfal-test-weu-rg-example-001'
- 'jortfal-test-weu-rg-example-002'
- 'jortfal-test-weu-rg-example-003'
- 'jortfal-test-weu-rg-example-004'
- 'jortfal-test-weu-rg-example-005'

To understand more about Azure Resource Group, check out the [Azure Resource Group documentation](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal).

## Quick start

To deploy the five Azure Resource Group:

1. Sign in with Azure CLI (https://docs.microsoft.com/en-us/cli/azure/authenticate-azure-cli)
   
   ```bash
   az login
   ```
2. Set a subscription to be the current active subscription (https://docs.microsoft.com/en-us/cli/azure/account?view=azure-cli-latest#az_account_set)

   ```bash
   az account set --subscription "your_subscription_name"
   ```

3. Initialize a working directory containing Terraform configuration files
   ```bash
   terraform init
   ```
4. Create the resource group
   
   ```bash
   terraform apply
   ```