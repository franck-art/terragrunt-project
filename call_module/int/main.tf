module "test" { 
  source = "git::https://github.com/franck-art/terragrunt-project.git//compute-engine?ref=v0.0.2"
name = "test"

machine_types = "n1-standard-1"

zone = "europe-west1-b"

images = "ubuntu-2004-focal-v20200529"

tags = ["test"]
}