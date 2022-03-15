# module "bitbucket" {
#   source           = "../../modules/bitbucket/services"
#   for_each         = var.repos
#   owner            = var.owner
#   repo_name        = unique_vars.key
#   stage_name       = var.stage_name
#   variable_name    = lookup(var.common_vars.value, "name", null)
#   variable_value   = lookup(var.common_vars.value, "value", null)
#   variable_secured = lookup(var.common_vars, "secured", false)
# }

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