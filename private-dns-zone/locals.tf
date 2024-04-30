locals{
  location_naming_pdnszone_map = {
    "eastus2" = "US_EAST2"
  }
  location_naming_pdnszone = lookup(local.location_naming_pdnszone_map,var.pdnszone_location,"ERR")
}

