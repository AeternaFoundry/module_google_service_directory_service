variable "service_directory_services" {
  description = <<EOT
Map of service_directory_services, attributes below
Required:
    - namespace
    - service_id
Optional:
    - deletion_policy
    - metadata
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    namespace       = string
    service_id      = string
    deletion_policy = optional(string)
    metadata        = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

