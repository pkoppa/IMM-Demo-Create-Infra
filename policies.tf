
module "bios_policy" {
  source                     = "./modules/bios_policy"
  name_of_bios_policy        = var.name_of_bios_policy
  description_of_bios_policy = var.description_of_bios_policy
  org_moid                   = module.org_details.organization_moid
}


module "imc_access_policy" {
  source                           = "./modules/imc_access_policy"
  name_of_imc_access_policy        = var.name_of_imc_access_policy
  description_of_imc_access_policy = var.description_of_imc_access_policy
  cimc_access_vlan                 = var.cimc_access_vlan
  ip_pool_for_cimc_access          = data.intersight_ippool_pool.inband-ip-pool.results[0].moid
  org_moid                         = module.org_details.organization_moid
}



module "boot_policy_for_iscsi" {
  source                  = "./modules/boot_policy_for_iscsi"
  boot_policy_name        = var.boot_policy_name
  boot_policy_description = var.boot_policy_description
  boot_mode               = var.boot_mode
  org_moid                = module.org_details.organization_moid
}



module "iscsi_adapter_policy" {
  source                              = "./modules/iscsi_adapter_policy"
  name_of_iscsi_adapter_policy        = var.name_of_iscsi_adapter_policy
  description_of_iscsi_adapter_policy = var.description_of_iscsi_adapter_policy
  tcp_connection_time_out             = var.tcp_connection_time_out
  dhcp_timeout                        = var.dhcp_timeout
  lun_busy_retry_count                = var.lun_busy_retry_count
  org_moid                            = module.org_details.organization_moid
}




module "iscsi_target_a_primary" {
  source                                    = "./modules/iscsi_static_target_policy"
  name_of_iscsi_static_target_policy        = var.name_of_iscsi_static_target_policy_a_primary
  description_of_iscsi_static_target_policy = var.description_of_iscsi_static_target_policy_a_primary
  target_ip                                 = var.target_ip_a_primary
  iscsi_port                                = var.iscsi_port_a_primary
  target_iqn                                = var.target_iqn_a_primary
  lun_id                                    = var.lun_id_a_primary
  org_moid                                  = module.org_details.organization_moid
}


module "iscsi_target_a_secondary" {
  source                                    = "./modules/iscsi_static_target_policy"
  name_of_iscsi_static_target_policy        = var.name_of_iscsi_static_target_policy_a_secondary
  description_of_iscsi_static_target_policy = var.description_of_iscsi_static_target_policy_a_secondary
  target_ip                                 = var.target_ip_a_secondary
  iscsi_port                                = var.iscsi_port_a_secondary
  target_iqn                                = var.target_iqn_a_secondary
  lun_id                                    = var.lun_id_a_secondary
  org_moid                                  = module.org_details.organization_moid
}


module "iscsi_target_b_primary" {
  source                                    = "./modules/iscsi_static_target_policy"
  name_of_iscsi_static_target_policy        = var.name_of_iscsi_static_target_policy_b_primary
  description_of_iscsi_static_target_policy = var.description_of_iscsi_static_target_policy_b_primary
  target_ip                                 = var.target_ip_b_primary
  iscsi_port                                = var.iscsi_port_b_primary
  target_iqn                                = var.target_iqn_b_primary
  lun_id                                    = var.lun_id_b_primary
  org_moid                                  = module.org_details.organization_moid
}

module "iscsi_target_b_secondary" {
  source                                    = "./modules/iscsi_static_target_policy"
  name_of_iscsi_static_target_policy        = var.name_of_iscsi_static_target_policy_b_secondary
  description_of_iscsi_static_target_policy = var.description_of_iscsi_static_target_policy_b_secondary
  target_ip                                 = var.target_ip_b_secondary
  iscsi_port                                = var.iscsi_port_b_secondary
  target_iqn                                = var.target_iqn_b_secondary
  lun_id                                    = var.lun_id_b_secondary
  org_moid                                  = module.org_details.organization_moid
}


module "ethernet_qos_policy-mtu-1500" {
  source                             = "./modules/ethernet_qos_policy"
  name_of_ethernet_qos_policy        = var.name_of_ethernet_qos_policy_mtu_1500
  description_of_ethernet_qos_policy = var.description_of_ethernet_qos_policy_mtu_1500
  mtu                                = var.mtu_mtu_1500
  class_of_service                   = var.class_of_service_mtu_1500
  burst                              = var.burst_mtu_1500
  priority                           = var.priority_mtu_1500
  rate_limit                         = var.rate_limit_mtu_1500
  org_moid                           = module.org_details.organization_moid
}


module "ethernet_qos_policy-jumbo-mtu" {
  source                             = "./modules/ethernet_qos_policy"
  name_of_ethernet_qos_policy        = var.name_of_ethernet_qos_policy_mtu_9000
  description_of_ethernet_qos_policy = var.description_of_ethernet_qos_policy_mtu_9000
  mtu                                = var.mtu_mtu_9000
  class_of_service                   = var.class_of_service_mtu_9000
  burst                              = var.burst_mtu_9000
  priority                           = var.priority_mtu_9000
  rate_limit                         = var.rate_limit_mtu_9000
  org_moid                           = module.org_details.organization_moid
}


module "ethernet_network_group_policy_mgmt_inband" {
  source                                       = "./modules/eth_network_group_policy"
  name_of_ethernet_network_group_policy        = var.name_of_ethernet_network_group_policy_mgmt_inband
  description_of_ethernet_network_group_policy = var.description_of_ethernet_network_group_policy_mgmt_inband
  native_vlan                                  = var.native_vlan_mgmt_inband
  allowed_vlans                                = var.allowed_vlans_mgmt_inband
  org_moid                                     = module.org_details.organization_moid
}


module "ethernet_network_group_policy_mgmt_oob" {
  source                                       = "./modules/eth_network_group_policy"
  name_of_ethernet_network_group_policy        = var.name_of_ethernet_network_group_policy_mgmt_oob
  description_of_ethernet_network_group_policy = var.description_of_ethernet_network_group_policy_mgmt_oob
  native_vlan                                  = var.native_vlan_mgmt_oob
  allowed_vlans                                = var.allowed_vlans_mgmt_oob
  org_moid                                     = module.org_details.organization_moid
}


module "ethernet_network_group_policy_iscsi-a" {
  source                                       = "./modules/eth_network_group_policy"
  name_of_ethernet_network_group_policy        = var.name_of_ethernet_network_group_policy_iscsi_a
  description_of_ethernet_network_group_policy = var.description_of_ethernet_network_group_policy_iscsi_a
  native_vlan                                  = var.native_vlan_iscsi_a
  allowed_vlans                                = var.allowed_vlans_iscsi_a
  org_moid                                     = module.org_details.organization_moid
}

module "ethernet_network_group_policy_iscsi-b" {
  source                                       = "./modules/eth_network_group_policy"
  name_of_ethernet_network_group_policy        = var.name_of_ethernet_network_group_policy_iscsi_b
  description_of_ethernet_network_group_policy = var.description_of_ethernet_network_group_policy_iscsi_b
  native_vlan                                  = var.native_vlan_iscsi_b
  allowed_vlans                                = var.allowed_vlans_iscsi_b
  org_moid                                     = module.org_details.organization_moid
}


module "RHEL_ethernet_adapter_policy" {
  source                                 = "./modules/ethernet_adapter_policy"
  name_of_ethernet_adapter_policy        = var.name_of_ethernet_adapter_policy_rhel
  description_of_ethernet_adapter_policy = var.description_of_ethernet_adapter_policy_rhel
  org_moid                               = module.org_details.organization_moid
}



module "iSCSI-Boot-A" {
  source = "./modules/iscsi_boot_policy"
  name_of_iscsi_boot_policy             = var.name_of_iSCSI-A_boot_policy
  description_of_iscsi_boot_policy      = var.description_of_iSCSI-A_boot_policy
  #ip_pool_moid                         = module.create_ip_pool-scsi-a.ip_pool_moid
  ip_pool_moid                          = data.intersight_ippool_pool.iscsi-a-ip-pool.results[0].moid
  iscsi_adapter_policy_moid             = module.iscsi_adapter_policy.iscsi_adapter_policy_moid
  primary_target_moid                   = module.iscsi_target_a_primary.iscsi_static_target_moid
  secondary_target_moid                 = module.iscsi_target_a_secondary.iscsi_static_target_moid
  org_moid                              = module.org_details.organization_moid
}


module "iSCSI-Boot-B" {
  source = "./modules/iscsi_boot_policy"
  name_of_iscsi_boot_policy             = var.name_of_iSCSI-B_boot_policy
  description_of_iscsi_boot_policy      = var.description_of_iSCSI-B_boot_policy
  #ip_pool_moid                          = module.create_ip_pool-iscsi-b.ip_pool_moid
  ip_pool_moid                          = data.intersight_ippool_pool.iscsi-b-ip-pool.results[0].moid
  iscsi_adapter_policy_moid             = module.iscsi_adapter_policy.iscsi_adapter_policy_moid
  primary_target_moid                   = module.iscsi_target_b_primary.iscsi_static_target_moid
  secondary_target_moid                 = module.iscsi_target_b_secondary.iscsi_static_target_moid
  org_moid                              = module.org_details.organization_moid
}


module "ethernet_network_control_policy" {
  source                                  = "./modules/network_control_policy"
  name_of_network_control_policy          = var.name_of_network_control_policy
  description_of_network_control_policy   = var.description_of_network_control_policy
  org_moid                                = module.org_details.organization_moid
}

/*
module "lan_connectivity_fi_attached" {
  depends_on = [module.create_iqn_pool]
  source                                                = "./modules/lan_connectivity_fi_attached"
  name_of_lan_connectivty_policy_fi_attached            = var.name_of_lan_connectivty_policy_fi_attached
  description_of_lan_connectivty_policy_fi_attached     = var.description_of_lan_connectivty_policy_fi_attached
  iqn_pool_moid_for_lc                                  = module.create_iqn_pool.iqn_pool_moid
  org_moid                                              = module.org_details.organization_moid

  ethernet_adapter_policy_moid                          = module.RHEL_ethernet_adapter_policy.ethernet_adapter_policy_moid
  qos_policy_mgmt                                       = module.ethernet_qos_policy-mtu-1500.ethernet_qos_policy_moid
  qos_policy_iscsi                                      = module.ethernet_qos_policy-jumbo-mtu.ethernet_qos_policy_moid
  ethernet_network_control_policy_moid                  = module.ethernet_network_control_policy.ethernet_network_control_policy_moid
  ethernet_network_group_policy_mgmt_moid               = module.ethernet_network_group_policy_mgmt_inband.ethernet_network_group_policy_moid
  ethernet_network_group_policy-iscsi-a                 = module.ethernet_network_group_policy_iscsi-a.ethernet_network_group_policy_moid
  ethernet_network_group_policy-iscsi-b                 = module.ethernet_network_group_policy_iscsi-b.ethernet_network_group_policy_moid
  mac_pool_mod_for_vnics                                = module.create_mac_pool.mac_pool_moid
  iscsi-a-boot-policy-moid                              = module.iSCSI-Boot-A.iscsi_boot_policy_moid
  iscsi-b-boot-policy-moid                              = module.iSCSI-Boot-B.iscsi_boot_policy_moid
}
*/