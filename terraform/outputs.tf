output "container_name" {
  value       = docker_container.flask_app.name
  description = "Name of the running container"
}

output "app_url" {
  value       = "http://localhost:${var.app_port}"
  description = "URL to access the Flask app"
}
