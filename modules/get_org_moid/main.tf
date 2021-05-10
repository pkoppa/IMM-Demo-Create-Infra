terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = ">1.0.4"
    }
  }
}


data "intersight_organization_organization" "get_org_moid" {
  name = var.organization_name
}

