# Terratest

[GitHub Terratest modules/azure/](https://github.com/gruntwork-io/terratest/tree/master/modules/azure)
[Prueba de módulos de Terraform en Azure mediante Terratest](https://learn.microsoft.com/es-es/azure/developer/terraform/test-modules-using-terratest)
[GitHub Terratest Example VM](https://github.com/gruntwork-io/terratest/blob/master/test/azure/terraform_azure_vm_example_test.go)
[]()

go mod tidy

az login --use-device-code
go test terraform_azure_resource_group_test.go -v