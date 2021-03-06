# Call backend config
 include {
   path = find_in_parent_folders()
 }


# Overload production variables
inputs = {

project = "easyence-tools"
tags = ["compute-prod"]

}