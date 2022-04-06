resource "yandex_container_registry" "registry" {
  name      = "test-registry"
  folder_id = var.ya_folder_id

  labels = {
    my-label = "test-registry"
  }
}