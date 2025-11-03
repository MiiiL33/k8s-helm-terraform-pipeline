terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
        }
    }
}

provider "google" {
    project = var.project_id
    region  = var.region
}

resource "kubernetes_namespace" "app" {
    metadata {
        name = var.namespace
    }
}
