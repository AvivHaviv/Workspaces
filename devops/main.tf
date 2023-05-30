for_each = {
  a_group = "eastus"
  another_group = "westus2"
}
module "workspaces" {
  for_each = var.users_id
  source  = "C:/Users/AvivHaviv/modules/Infraedge-workspaces"
  workspace_name = each.key

  //source  = "/../../modules/terraform-aws-workspaces"
  # insert the 2 required variables here
}