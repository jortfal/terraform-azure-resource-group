package test

import (
	"testing"
	// "fmt"

	"github.com/gruntwork-io/terratest/modules/azure"
	"github.com/gruntwork-io/terratest/modules/terraform"
	test_structure "github.com/gruntwork-io/terratest/modules/test-structure"
	"github.com/stretchr/testify/assert"
)

var subscriptionID string = "f96ea3ef-daf8-4ad9-be47-e27a846e9298"
var resourceGroupName string = "jortfal-test-weu-rg-example-000"

func TestTerraformAzureResourceGroupExample(t *testing.T) {
	
	InitialDeploy(t)
	// Configure Terraform setting up a path to Terraform code.
	// terraformOptions := &terraform.Options{
	// 	// The path to where our Terraform code is located
	// 	TerraformDir: "../examples/single_resource_group",
	// }
	//terraformOptions := GetTerraformOptions(t)

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	
	// defer terraform.Destroy(t, terraformOptions)

	// Run `terraform init` and `terraform apply`. Fail the test if there are any errors.
	
	// terraform.InitAndApply(t, terraformOptions)

	// Verify the resource group exists
	exists := azure.ResourceGroupExists(t, resourceGroupName, subscriptionID)
	assert.True(t, exists, "Resource group does not exist")

	// testTerraformAzureResourceGroupID(t, terraformOptions, resourceGroupName, subscriptionID)
}

func TestTerraformAzureResourceGroupID(t *testing.T) {


	terraformOptions := GetTerraformOptions(t)

	// Run `terraform output` to get the values of output variables.
	outputResourceGroupID := terraform.Output(t, terraformOptions, "id")

	rg := azure.GetAResourceGroup(t, resourceGroupName, subscriptionID)
	assert.Equal(t, *rg.ID, outputResourceGroupID)
}

func InitialDeploy(t *testing.T) {
	
	terraformOptions := GetTerraformOptions(t)

	// Save the Terraform Options struct so future test stages can use it
	test_structure.SaveTerraformOptions(t, "../examples/single_resource_group", terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)
}

func GetTerraformOptions(t *testing.T) *terraform.Options {
	exampleFolder := test_structure.CopyTerraformFolderToTemp(t, "../", "examples/single_resource_group")

	terraformOptions := &terraform.Options{
		TerraformDir: exampleFolder,
		// Vars:         map[string]interface{}{},
	}
	return terraformOptions
}
