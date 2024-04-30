resource "azurerm_private_dns_zone" "pdnszone" {
  name = var.pdnszone_name == "aks" ? "privatelink.eastus2.azmk8s.io" : (
    var.pdnszone_name == "sqlmi" ? "privatelink.sqlmi.database.windows.net" : (var.pdnszone_name == "mysqlflexserver" ? "privatelink.mysql.database.azure.com" : "privatelink.azurecr.io"
  ))
  resource_group_name = var.rg_name
}

resource "azurerm_private_dns_zone_virtual_network_link" "pdz_virtual_link" {
  name                  = "project-${var.env}-${var.pdz_vl_name}-${local.location_naming_pdnszone}-01"
  resource_group_name   = var.rg_name
  private_dns_zone_name = azurerm_private_dns_zone.pdnszone.name
  virtual_network_id    = var.vnet_id
}
