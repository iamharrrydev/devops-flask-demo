variable "dockerhub_username" {
  description = "Docker Hub username"
  type        = string
}

variable "app_port" {
  description = "Port to expose the Flask app on"
  type        = number
  default     = 5000
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "production"
}
