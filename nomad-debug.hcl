job "nomad-debug" {
  datacenters = ["dc1"]

  group "nomad-debug" {
    count = 10

    update {
      max_parallel     = 2
      min_healthy_time = "10s"
      healthy_deadline = "20s"
      auto_revert = true
    }

    network {
      port "http" {}
    }
    task "server" {
      driver = "docker"

      config {
        image = "hashideke/nomad-debug:v0.0.1"
        ports = ["http"]
      }
    }
  }
}
