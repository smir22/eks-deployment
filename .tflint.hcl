# This tflint config file which ignores minor issues
# and only allows major or critical errors to continue forward

plugin "terraform" {
  enabled = true
}

rule "terraform_required_version" {
  enabled = false
}

rule "terraform_required_providers" {
  enabled = false
}

rule "terraform_unused_declarations" {
  enabled = false
}

