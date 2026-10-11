variable "cloudfunctions2_function_iam_members" {
  description = <<EOT
Map of cloudfunctions2_function_iam_members, attributes below
Required:
    - cloud_function
    - member
    - role
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    cloud_function = string
    member         = string
    role           = string
    location       = optional(string)
    project        = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

