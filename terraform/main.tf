terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "flask_app" {
  name         = "${var.dockerhub_username}/devops-flask-demo:latest"
  keep_locally = false
}

resource "docker_container" "flask_app" {
  name  = "flask-app-terraform"
  image = docker_image.flask_app.image_id

  ports {
    internal = 5000
    external = var.app_port
  }

  restart = "always"

  env = [
    "ENV=${var.environment}"
  ]

  healthcheck {
    test         = ["CMD", "curl", "-f", "http://localhost:5000/health"]
    interval     = "30s"
    timeout      = "10s"
    retries      = 3
    start_period = "10s"
  }
}
