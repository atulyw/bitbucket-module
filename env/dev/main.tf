module "bitbucket" {
  source               = "../../modules/bitbucket/services"
  for_each             = var.unique_vars
  owner                = var.owner
  repo_name            = unique_vars.key
  stage_name           = var.stage_name
  # variable_name        = lookup(unique_vars.value, "name", null)
  # variable_value       = lookup(unique_vars.value, "value", null)
  # variable_secured     = lookup(unique_vars.value, "secured", false)
  # uni_variable_name    = lookup(var.unique_vars.value, "name", null)
  # uni_variable_value   = lookup(var.unique_vars.value, "value", null)
  # uni_variable_secured = lookup(var.unique_vars, "secured", false)
}