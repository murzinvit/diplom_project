resource "yandex_container_registry" "registry" {
  name      = "test-registry"
  folder_id = "b1gogcvb32hqskgu5trk"

  labels = {
    my-label = "test-registry"
  }
}