resource "yandex_lb_target_group" "targetgroup" {
  name      = "targetgroup"
  folder_id = var.folder_id

  dynamic target {
    for_each = yandex_compute_instance.app.*.network_interface.0.ip_address
    content {
      subnet_id = var.subnet_id
      address   = target.value
    }
  }
}


resource "yandex_lb_network_load_balancer" "loadbalancer" {
  name = "loadbalancer"

  listener {
    name = "my-listener"
    port = 80

    target_port = 9292
    external_address_spec {
      ip_version = "ipv4"
    }
  }








  attached_target_group {
    target_group_id = yandex_lb_target_group.targetgroup.id

    healthcheck {
      name = "health"
      http_options {
        port = 9292
      }
    }
  }
}
