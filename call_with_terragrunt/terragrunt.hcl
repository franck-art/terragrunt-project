remote_state {
  backend = "gcs"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "easyence-sandbox-tf-states"

    prefix = "terraform/${path_relative_to_include()}/compute-engine"
  }
}

# infrastructure-live/stage/app/terragrunt.hcl
 terraform {
  source = "git::https://github.com/franck-art/terragrunt-project.git//compute-engine?ref=master"
 }

inputs = {

# same values for compute engine in Prod and Int
name = "compute-${path_relative_to_include()}"

machine_types = "n1-standard-1"

zone = "europe-west1-b"

images = "ubuntu-2004-focal-v20200529"

}