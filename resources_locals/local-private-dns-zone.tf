 locals {
   dnszone_values = {
     "01" = {
       pdnszone_name = "acr"
       rg_name       = "${module.rg_module["hub"].rg_name}"
       pdz_vl_name   = "acr-virualLink"
       vnet_id       = "${module.vnet_module["01"].vnet_id}"
     }
   }
 }

