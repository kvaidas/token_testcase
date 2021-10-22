resource "github_repository_deploy_key" "test" {
  repository = "kvaidas/token_testcase"
  key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC8I9Rfn7YlmGbT1+hVZtUwuaJhcz3sB3x1JmcCwZnDOJKLVO4PWe/Y//2GiWlRNkWSvvqz/Ajyopy1wi1sLGaZYC6lYbbFbWCXNjRC3FUHoOAZWllWPQH0N5TM9EP0LCv3lvBH7DKZfchIbv//4xvhSr5EyMtQnsw5JVSSlYqcETcUGxRYaahdysPmISFkuibGvD6HYAS/u32l3a7Qjzv6N6mrEcIsUe+y+qeqmlILk6jrVskEHwj36Hc00V57K3NJfW6dfxFPHlViDtH7gwnHazbHuUt29IEWDmJE8uHfACTpsV9F28zDjhaDIRQL4A++hJAFmZPXXnj2lESS1oZBUH7GEGyN3hT/CtI64E0/cUFPPb7eLw5iQOZJQqzh+RPPG9WzoCFLwIGrSjoYs1V3dEii5YAQSrt01eO4Vv04Y10azka+u/PvC1EEnEaX2RrLIKoRCSuhZy+LyHQTeSdvUjOwf58FNEAy2GzzI48YL/w8oq5KGXdFNg+nLXO4z28= deleteme"
  title = "test"
}

variable "token" {}

provider "github" {
  token = var.token
}

terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}
