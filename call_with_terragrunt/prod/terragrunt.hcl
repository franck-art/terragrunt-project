# Call backend config
 include {
   path = find_in_parent_folders()
 }


# Overload production variables
inputs = {

project = "prod-project"
tags = ["compute-prod"]

}
