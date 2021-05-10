org_name = "IMM"

# MAC Pool
name_of_mac_pool        = "IMM-Demo-Mac-Pool"
description_of_mac_pool = "IMM-Demo pool of MACs"
mac_pool_start          = "02:25:41:AA:BB:CC"
size_of_mac_pool        = 1000

# IP Pool
name_of_ip_pool        = "IMM-Demo-IP-Pool"
description_of_ip_pool = "IMM-Demo pool of IPs"
ip_pool_start          = "192.168.160.201"
size_of_ip_pool        = 3
gateway                = "192.168.160.254"
netmask                = "255.255.252.0"
primary_dns            = "192.168.160.53"
secondary_dns          = "192.168.160.54"


# IP Pool - iSCSI-A
name_of_ip_pool_iscsi_a        = "IMM-Demo-IP-Pool"
description_of_ip_pool_iscsi_a = "IMM-Demo pool of IPs"
ip_pool_start_iscsi_a          = "192.168.31.201"
size_of_ip_pool_iscsi_a        = 32
gateway_iscsi_a                = "192.168.31.254"
netmask_iscsi_a                = "255.255.255.0"
primary_dns_iscsi_a            = ""
secondary_dns_iscsi_a          = ""

# IP Pool - iSCSI-B
name_of_ip_pool_iscsi_b        = "IMM-Demo-IP-Pool"
description_of_ip_pool_iscsi_b = "IMM-Demo pool of IPs"
ip_pool_start_iscsi_b          = "192.168.32.201"
size_of_ip_pool_iscsi_b        = 32
gateway_iscsi_b                = "192.168.32.254"
netmask_iscsi_b                = "255.255.255.0"
primary_dns_iscsi_b            = ""
secondary_dns_iscsi_b          = ""


# IQN Pool
name_of_iqn_pool        = "IMM-Demo-IQN-Pool"
description_of_iqn_pool = "IMM-Demo pool of IQNs"
prefix_for_iqn          = "iqn.2010-11.com.flexpod"
suffix_for_iqn          = "ucs-host"
iqn_start               = 01
size_of_iqn_pool        = 32

# BIOS Policy
name_of_bios_policy              = "IMM-Demo-Bios-Policy"
description_of_bios_policy       = "IMM-Demo-Bios-Policy"

# CIMC Access Policy
name_of_imc_access_policy        = "IMM-Demo-CIMC-Access-Policy"
description_of_imc_access_policy = "IMM-Demo-CIMC-Access-Policy"
cimc_access_vlan                 = "11"

# Boot Policy
boot_policy_name        = "IMM-Demo-Boot-Policy"
boot_policy_description = "IMM Demo  iSCSI Boot Policy"
boot_mode               = "Legacy"

# iSCSI Adapter Policy
name_of_iscsi_adapter_policy        = "IMM-Demo-iSCSI-Adapter-Policy"
description_of_iscsi_adapter_policy = "IMM-Demo-iSCSI-Adapter-Policy"
tcp_connection_time_out             = 15
dhcp_timeout                        = 60
lun_busy_retry_count                = 15

# iSCSI Static Target - A - Primary
name_of_iscsi_static_target_policy_a_primary        = "IMM-Demo-iSCSI-Target-A-Primary"
description_of_iscsi_static_target_policy_a_primary = "IMM-Demo-iSCSI-Target-A-Primary"
target_ip_a_primary                                 = "192.168.31.101"
iscsi_port_a_primary                                = 3260
target_iqn_a_primary                                = "iqn.1992-08.com.netapp:sn.e461ee9f190611ebb06300a0985b4a87:vs.3"
lun_id_a_primary                                    = 0

# iSCSI Static Target - A - Secondary
name_of_iscsi_static_target_policy_a_secondary        = "IMM-Demo-iSCSI-Target-A-Secondary"
description_of_iscsi_static_target_policy_a_secondary = "IMM-Demo-iSCSI-Target-A-Secondary"
target_ip_a_secondary                                 = "192.168.31.102"
iscsi_port_a_secondary                                = 3260
target_iqn_a_secondary                                = "iqn.1992-08.com.netapp:sn.e461ee9f190611ebb06300a0985b4a87:vs.3"
lun_id_a_secondary                                    = 0


# iSCSI Static Target - B - Primary
name_of_iscsi_static_target_policy_b_primary        = "IMM-Demo-iSCSI-Target-B-Primary"
description_of_iscsi_static_target_policy_b_primary = "IMM-Demo-iSCSI-Target-B-Primary"
target_ip_b_primary                                 = "192.168.32.101"
iscsi_port_b_primary                                = 3260
target_iqn_b_primary                                = "iqn.1992-08.com.netapp:sn.e461ee9f190611ebb06300a0985b4a87:vs.3"
lun_id_b_primary                                    = 0


# iSCSI Static Target - B - Secondary
name_of_iscsi_static_target_policy_b_secondary        = "IMM-Demo-iSCSI-Target-B-Secondary"
description_of_iscsi_static_target_policy_b_secondary = "IMM-Demo-iSCSI-Target-B-Secondary"
target_ip_b_secondary                                 = "192.168.32.102"
iscsi_port_b_secondary                                = 3260
target_iqn_b_secondary                                = "iqn.1992-08.com.netapp:sn.e461ee9f190611ebb06300a0985b4a87:vs.3"
lun_id_b_secondary                                    = 0


# Ethernet QoS Policy - MTU: 9000
name_of_ethernet_qos_policy_mtu_9000        = "IMM-Demo-QoS-Jumbo-MTU"
description_of_ethernet_qos_policy_mtu_9000 = "IMM-Demo-QoS-Jumbo-MTU"


# Ethernet QoS Policy - MTU: 1500
name_of_ethernet_qos_policy_mtu_1500        = "IMM-Demo-QoS-MTU-1500"
description_of_ethernet_qos_policy_mtu_1500 = "IMM-Demo-QoS-MTU-1500"


# Ethernet Network Group Policies
name_of_ethernet_network_group_policy_mgmt_inband        = "IMM-Demo-Ethernet-Network-Group-Inband-Mgmt"
description_of_ethernet_network_group_policy_mgmt_inband = "IMM-Demo-Ethernet-Network-Group-Inband-Mgmt"
native_vlan_mgmt_inband                                  = 511
allowed_vlans_mgmt_inband                                = 511
name_of_ethernet_network_group_policy_mgmt_oob           = "IMM-Demo-Ethernet-Network-Group-OOB-Mgmt"
description_of_ethernet_network_group_policy_mgmt_oob    = "IMM-Demo-Ethernet-Network-Group-OOB-Mgmt"
native_vlan_mgmt_oob                                     = 11
allowed_vlans_mgmt_oob                                   = 11
name_of_ethernet_network_group_policy_iscsi_a            = "IMM-Demo-Ethernet-Network-Group-iSCSI-A"
description_of_ethernet_network_group_policy_iscsi_a     = "IMM-Demo-Ethernet-Network-Group-iSCSI-A"
native_vlan_iscsi_a                                      = 3010
allowed_vlans_iscsi_a                                    = 3010
name_of_ethernet_network_group_policy_iscsi_b            = "IMM-Demo-Ethernet-Network-Group-iSCSI-B"
description_of_ethernet_network_group_policy_iscsi_b     = "IMM-Demo-Ethernet-Network-Group-iSCSI-B"
native_vlan_iscsi_b                                      = 3020
allowed_vlans_iscsi_b                                    = 3020



# Ethernet Adapter Policy for RHEL
name_of_ethernet_adapter_policy_rhel        = "IMM-Demo-Ethernet-Adapter-Policy-RHEL"
description_of_ethernet_adapter_policy_rhel = "IMM-Demo-Ethernet-Adapter-Policy-RHEL"



# iSCSI Boot Policies
name_of_iSCSI-A_boot_policy               = "IMM-Demo-iSCSI-A-Boot-Policy"
description_of_iSCSI-A_boot_policy        = "IMM-Demo-iSCSI-A-Boot-Policy"
name_of_iSCSI-B_boot_policy               = "IMM-Demo-iSCSI-B-Boot-Policy"
description_of_iSCSI-B_boot_policy        = "IMM-Demo-iSCSI-B-Boot-Policy"



# Ethernet Network Control Policy
name_of_network_control_policy            = "IMM-Demo-Ethernet-Network-Control-Policy"
description_of_network_control_policy     = "IMM-Demo-Ethernet-Network-Control-Policy"



# LAN Connectivity Policy - FI Attached
name_of_lan_connectivty_policy_fi_attached          = "IMM-Demo-Lan-Connectivty-FI-Attached"
description_of_lan_connectivty_policy_fi_attached   = "IMM-Demo-Lan-Connectivty-FI-Attached"


# Server Profiles
name_of_server_profiles                             = "IMM-Demo-RHEL-Server-3"
