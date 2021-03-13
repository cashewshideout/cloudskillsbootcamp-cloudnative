resource "azurerm_resource_group" "terraform-test" {
  name     = "terraform-test"
  location = "East US"
}

resource "azurerm_app_service_plan" "terraform-test-plan" {
  name                = "ch-terraform-test-appserviceplan"
  location            = azurerm_resource_group.terraform-test.location
  resource_group_name = azurerm_resource_group.terraform-test.name

  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "terraform-test-appservice" {
  name                = "ch-test-test01"
  location            = azurerm_resource_group.terraform-test.location
  resource_group_name = azurerm_resource_group.terraform-test.name
  app_service_plan_id = azurerm_app_service_plan.terraform-test-plan.id
}