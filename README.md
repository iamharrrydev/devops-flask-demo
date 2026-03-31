# DevOps Flask Demo

A Python Flask app with a full CI/CD pipeline using GitHub Actions and Docker.

## Pipeline
- Runs tests automatically on every push
- Builds a Docker image
- Pushes to Docker Hub

## Run locally
docker pull harrydev1/devops-flask-demo:latest
docker run -p 5000:5000 harrydev1/devops-flask-demo
