module "bitbucket" {
  source               = "../../modules/bitbucket/services"
  for_each             = var.unique_vars.key
  owner                = var.owner
  repo_name            = var.unique_vars.key
  stage_name           = var.stage_name
  variable_name        = lookup(var.common_vars.value, "name", null)
  variable_value       = lookup(var.common_vars.value, "value", null)
  variable_secured     = lookup(var.common_vars.value, "secured", false)
  # uni_variable_name    = lookup(var.unique_vars.value, "name", null)
  # uni_variable_value   = lookup(var.unique_vars.value, "value", null)
  # uni_variable_secured = lookup(var.unique_vars, "secured", false)
}