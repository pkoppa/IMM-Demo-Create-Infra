resource "intersight_vnic_lan_connectivity_policy" "lan_connectivity_fi_attached" {
  name                    =  var.name_of_lan_connectivty_policy_fi_attached
  description             =  var.description_of_lan_connectivty_policy_fi_attached
  iqn_allocation_type     = "Pool"
  placement_mode          = "auto"
  static_iqn_name         = ""
  target_platform         = "FIAttached"

  iqn_pool  = [{
    moid                  = module.create_iqn_pool.iqn_pool_moid
    additional_properties = ""
    class_id              = ""
    object_type           = ""
    selector              = ""
  }]

  organization 	{
    object_type    	      = "organization.Organization"
    moid           	      = module.org_details.organization_moid
  }

  profiles = [{moid= intersight_server_profile.FP-RHEL-Server-7.id, object_type = "server.Profile", class_id = "server.Profile", additional_properties = "", selector = ""}]

}



resource "intersight_vnic_eth_if" "mgmt" {
  name  = "mgmt"
  failover_enabled = true
  mac_address_type = "POOL"

  lan_connectivity_policy = [{
    moid        = intersight_vnic_lan_connectivity_policy.lan_connectivity_fi_attached.id
    object_type = "vnic.LanConnectivityPolicy"
    additional_properties = ""
    class_id = ""
    object_type =  ""
    selector = ""
  }]

  eth_adapter_policy = [{
    moid = module.RHEL_ethernet_adapter_policy.ethernet_adapter_policy_moid
    additional_properties = ""
    class_id = ""
    object_type = ""
    selector = ""
  }]

  eth_qos_policy = [{
    moid = module.ethernet_qos_policy-mtu-1500.ethernet_qos_policy_moid
    additional_properties = ""
    class_id = ""
    object_type =  ""
    selector = ""
  }]

  fabric_eth_network_control_policy = [{
    moid= module.ethernet_network_control_policy.ethernet_network_control_policy_moid
    additional_properties = ""
    class_id = ""
    object_type = ""
    selector = ""
  }]

  fabric_eth_network_group_policy = [{
    moid = module.ethernet_network_group_policy_mgmt_inband.ethernet_network_group_policy_moid
    additional_properties = ""
    class_id = ""
    object_type = ""
    selector = ""
  }]

  mac_pool = [{
    moid = module.create_mac_pool.mac_pool_moid
    additional_properties = ""
    class_id = ""
    object_type =  ""
    selector = ""
  }]

  cdn  = [{
    nr_source = "vnic"
    additional_properties = ""
    class_id = ""
    object_type = ""
    value = ""
  }]

  placement = [{
    switch_id = "A"
    additional_properties = ""
    class_id = ""
    object_type = ""
    pci_link = 0
    uplink = 0
    id= ""

  }]
}




resource "intersight_vnic_eth_if" "iscsi-a" {
  name  = "iscsi-a"
  failover_enabled = false
  mac_address_type = "POOL"

  lan_connectivity_policy {
    moid        = intersight_vnic_lan_connectivity_policy.lan_connectivity_fi_attached.id
    object_type = "vnic.LanConnectivityPolicy"
  }

  eth_adapter_policy = [{
    moid = module.RHEL_ethernet_adapter_policy.ethernet_adapter_policy_moid
    additional_properties = ""
    class_id = ""
    object_type =  ""
    selector = ""
  }]

  eth_qos_policy = [{
    moid = module.ethernet_qos_policy-jumbo-mtu.ethernet_qos_policy_moid
    additional_properties = ""
    class_id = ""
    object_type =  ""
    selector = ""
  }]

  fabric_eth_network_control_policy = [{
    moid= module.ethernet_network_control_policy.ethernet_network_control_policy_moid
    additional_properties = ""
    class_id = ""
    object_type =  ""
    selector = ""
  }]

  fabric_eth_network_group_policy = [{
    moid = module.ethernet_network_group_policy_iscsi-a.ethernet_network_group_policy_moid
    additional_properties = ""
    class_id = ""
    object_type =  ""
    selector = ""
  }]

  mac_pool = [{
    moid = module.create_mac_pool.mac_pool_moid
    additional_properties = ""
    class_id = ""
    object_type =  ""
    selector = ""
  }]

  cdn  = [{
    nr_source = "vnic"
    additional_properties = ""
    class_id = ""
    object_type =  ""
    value = ""
  }]


  iscsi_boot_policy = [{
    moid = module.iSCSI-Boot-A.iscsi_boot_policy_moid
    additional_properties = ""
    class_id = ""
    object_type = ""
    selector= ""
  }]

  placement = [{
    switch_id = "A"
    additional_properties = ""
    class_id = ""
    object_type = ""
    pci_link = 0
    uplink = 0
    id= ""
  }]
}


resource "intersight_vnic_eth_if" "iscsi-b" {
  name  = "iscsi-b"
  failover_enabled = false
  mac_address_type = "POOL"

  lan_connectivity_policy {
    moid        = intersight_vnic_lan_connectivity_policy.lan_connectivity_fi_attached.id
    object_type = "vnic.LanConnectivityPolicy"
  }

  eth_adapter_policy = [{
    moid = module.RHEL_ethernet_adapter_policy.ethernet_adapter_policy_moid
    additional_properties = ""
    class_id = ""
    object_type = ""
    selector= ""
  }]

  eth_qos_policy = [{
    moid = module.ethernet_qos_policy-jumbo-mtu.ethernet_qos_policy_moid
    additional_properties = ""
    class_id = ""
    object_type = ""
    selector= ""
  }]

  fabric_eth_network_control_policy = [{
    moid= module.ethernet_network_control_policy.ethernet_network_control_policy_moid
    additional_properties = ""
    class_id = ""
    object_type = ""
    selector= ""
  }]

  fabric_eth_network_group_policy = [{
    moid = module.ethernet_network_group_policy_iscsi-b.ethernet_network_group_policy_moid
    additional_properties = ""
    class_id = ""
    object_type = ""
    selector= ""

  }]

  mac_pool = [{
    moid = module.create_mac_pool.mac_pool_moid
    additional_properties = ""
    class_id = ""
    object_type = ""
    selector = ""
  }]

  cdn  = [{
    nr_source = "vnic"
    additional_properties = ""
    class_id = ""
    object_type = ""
    value = ""
  }]

  iscsi_boot_policy = [{
    moid = module.iSCSI-Boot-B.iscsi_boot_policy_moid
    additional_properties = ""
    class_id = ""
    object_type = ""
    selector = ""
  }]
  placement = [{
    switch_id = "B"
    additional_properties = ""
    class_id = ""
    object_type = ""
    pci_link = 0
    uplink = 1
    id = ""
  }]
}