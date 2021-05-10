resource "intersight_server_profile" "FP-RHEL-Server-7" {
  name = var.name_of_server_profiles
  target_platform = "FIAttached"

  policy_bucket = [
    {
      moid = module.bios_policy.bios_policy_moid,
      object_type = "bios.Policy",
      class_id = "bios.Policy",
      additional_properties = "",
      selector = ""
    },
    {
      moid = module.boot_policy_for_iscsi.boot_policy_for_iscsi_moid,
      object_type = "boot.PrecisionPolicy",
      class_id = "boot.PrecisionPolicy",
      additional_properties = "",
      selector = ""
    },
    {
      moid = module.imc_access_policy.intersight_access_policy_moid,
      object_type = "access.Policy",
      class_id = "access.Policy",
      additional_properties = "",
      selector = ""
    }]

  assigned_server = [{
    moid = "603005b26176752d37cc4f7b"
    object_type = "compute.Blade"
    class_id = "compute.Blade"
    additional_properties = ""
    selector = ""
  }]


  organization {
    object_type = "organization.Organization"
    moid = module.org_details.organization_moid
  }


}

/*
resource "intersight_server_profile" "Apply-FP-RHEL-Server-7" {
  name = var.name_of_server_profiles
  target_platform = "FIAttached"
  depends_on = [intersight_server_profile.FP-RHEL-Server-7]


  assigned_server = [{
    moid = "603005b26176752d37cc4f7b"
    object_type = "compute.Blade"
    class_id = "compute.Blade"
    additional_properties = ""
    selector = ""
  }]




  action= "Deploy"

  organization {
    object_type = "organization.Organization"
    moid = module.org_details.organization_moid
  }
}

*/
