module "org_details" {
  source            = "./modules/get_org_moid"
  organization_name = var.org_name
}



module "create_mac_pool" {
  source                  = "./modules/mac_pool"
  name_of_mac_pool        = var.name_of_mac_pool
  description_of_mac_pool = var.description_of_mac_pool
  mac_pool_start          = var.mac_pool_start
  size_of_mac_pool        = var.size_of_mac_pool
  org_moid                = module.org_details.organization_moid
}


module "create_iqn_pool" {
  source                  = "./modules/iqn_pool"
  name_of_iqn_pool        = var.name_of_iqn_pool
  description_of_iqn_pool = var.description_of_iqn_pool
  prefix_for_iqn          = var.prefix_for_iqn
  suffix_for_iqn          = var.suffix_for_iqn
  iqn_start               = var.iqn_start
  size_of_iqn_pool        = var.size_of_iqn_pool
  org_moid                = module.org_details.organization_moid
}

data "intersight_ippool_pool" "inband-ip-pool" {
  name = "AA04-6454-Pool"
}

data "intersight_ippool_pool" "iscsi-a-ip-pool" {
  name = "ISCSI-A-Pool"
}

data "intersight_ippool_pool" "iscsi-b-ip-pool" {
  name = "ISCSI-B-Pool"
}


/*
module "create_ip_pool" {
  source                 = "./modules/ip_pool"
  name_of_ip_pool        = var.name_of_ip_pool
  description_of_ip_pool = var.description_of_ip_pool
  ip_pool_start          = var.ip_pool_start
  size_of_ip_pool        = var.size_of_ip_pool
  gateway                = var.gateway
  netmask                = var.netmask
  primary_dns            = var.primary_dns
  secondary_dns          = var.secondary_dns
  org_moid               = module.org_details.organization_moid
}


module "create_ip_pool-scsi-a" {
  source                 = "./modules/ip_pool"
  name_of_ip_pool        = var.name_of_ip_pool_iscsi_a
  description_of_ip_pool = var.description_of_ip_pool_iscsi_a
  ip_pool_start          = var.ip_pool_start_iscsi_a
  size_of_ip_pool        = var.size_of_ip_pool_iscsi_a
  gateway                = var.gateway_iscsi_a
  netmask                = var.netmask_iscsi_a
  primary_dns            = var.primary_dns_iscsi_a
  secondary_dns          = var.secondary_dns_iscsi_a
  org_moid               = module.org_details.organization_moid
}


module "create_ip_pool-iscsi-b" {
  source                 = "./modules/ip_pool"
  name_of_ip_pool        = var.name_of_ip_pool_iscsi_b
  description_of_ip_pool = var.description_of_ip_pool_iscsi_b
  ip_pool_start          = var.ip_pool_start_iscsi_b
  size_of_ip_pool        = var.size_of_ip_pool_iscsi_b
  gateway                = var.gateway_iscsi_b
  netmask                = var.netmask_iscsi_b
  primary_dns            = var.primary_dns_iscsi_b
  secondary_dns          = var.secondary_dns_iscsi_b
  org_moid               = module.org_details.organization_moid
}

*/

