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

variable "resource_group_list" {
  description = "A list of resource group objects"
  type = list(
    object({
      name       = string                // The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created.
      location   = string                // The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created.
      managed_by = optional(string)      // The ID of the resource or application that manages this Resource Group.
      tags       = optional(map(string)) // A mapping of tags which should be assigned to the Resource Group.
    })
  )
}
