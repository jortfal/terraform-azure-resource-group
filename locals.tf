/* 
Copyright 2021 @jortfal | José Manuel Ortega Falcón
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. 
*/

locals {
  # Terraform tags to be assigned to all resources
  terraform_module_tags = {
    "Terraform Managed"           = true
    "Terraform Module Name"       = "Azure Resource Group"
    "Terraform Module Version"    = "v0.0.0"
    "Terraform Module SourceCode" = "https://github.com/jortfal/terraform-azure-resource-group"
  }
}
