resource "bitbucket_repository" "this" {
  owner             = var.owner
  name              = var.repo_name
  pipelines_enabled = true
}

resource "bitbucket_deployment" "this" {
  repository = bitbucket_repository.this.id
  name       = var.stage_name
  stage      = var.stage_name
}

resource "bitbucket_deployment_variable" "common" {
  deployment = bitbucket_deployment.this.id
  key        = var.variable_name
  value      = var.variable_value
  secured    = var.variable_secured
}