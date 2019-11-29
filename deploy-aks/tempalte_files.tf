data "template_file" "aadpodidentity" {
    template = file("./template_files/aadpodidentity.tpl")
    vars = {
        msi_name = "aks-user-msi"
        msi_resource_id = azurerm_user_assigned_identity.aks_user_msi.id
        msi_client_id = azurerm_user_assigned_identity.aks_user_msi.client_id
    }
}

resource "null_resource" "yaml_files" {
    provisioner "local-exec" {
        
    }
}