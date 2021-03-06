variable "name" {
    description = "name"
     type = string
}

variable "machine_types" {
    description = "type"
     type = string
}

variable "zone" {
    description = "zone"
     type = string
}

variable "images" {
    description = "image"
     type = string
}

variable "tags" {
    description = "tags"
    type = list(string)
}

variable "project" {
    description = "project"
    type = string
}
