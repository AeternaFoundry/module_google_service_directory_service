output "service_directory_services_id" {
  description = "Map of id values across all service_directory_services, keyed the same as var.service_directory_services except keys with no id are omitted"
  value       = { for k, v in google_service_directory_service.service_directory_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_directory_services_deletion_policy" {
  description = "Map of deletion_policy values across all service_directory_services, keyed the same as var.service_directory_services except keys with no deletion_policy are omitted"
  value       = { for k, v in google_service_directory_service.service_directory_services : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "service_directory_services_metadata" {
  description = "Map of metadata values across all service_directory_services, keyed the same as var.service_directory_services except keys with no metadata are omitted"
  value       = { for k, v in google_service_directory_service.service_directory_services : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "service_directory_services_name" {
  description = "Map of name values across all service_directory_services, keyed the same as var.service_directory_services except keys with no name are omitted"
  value       = { for k, v in google_service_directory_service.service_directory_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "service_directory_services_namespace" {
  description = "Map of namespace values across all service_directory_services, keyed the same as var.service_directory_services except keys with no namespace are omitted"
  value       = { for k, v in google_service_directory_service.service_directory_services : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "service_directory_services_service_id" {
  description = "Map of service_id values across all service_directory_services, keyed the same as var.service_directory_services except keys with no service_id are omitted"
  value       = { for k, v in google_service_directory_service.service_directory_services : k => v.service_id if v.service_id != null && length(v.service_id) > 0 }
}

