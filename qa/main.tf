for_each = {
  a_group = "eastus"
  another_group = "westus2"
}
module "workspaces" {
  for_each = var.users_id
  source  = "C:/Users/AvivHaviv/modules/terraform-aws-workspaces"
  //source  = "/../../modules/terraform-aws-workspaces"
  workspace_name = each.key
  vpc_id = var.vpc_id
  vpc_cidr_block = var.vpc_cidr_block
  subnet_cidr_block = var.subnet_cidr_block
  ip_group_source = var.ip_group_source
  ip_group_contractors_source = var.ip_group_contractors_source
}