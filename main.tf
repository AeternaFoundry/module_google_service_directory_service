resource "google_service_directory_service" "service_directory_services" {
  for_each = var.service_directory_services

  namespace       = each.value.namespace
  service_id      = each.value.service_id
  deletion_policy = each.value.deletion_policy
  metadata        = each.value.metadata

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

