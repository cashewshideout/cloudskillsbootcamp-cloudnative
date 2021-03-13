param location string = 'eastus'
param name string = 'storagename1245'

var storageSku = 'Standard_LRS'

resource storageaccount 'Microsoft.Storage/storageAccounts@2020-08-01-preview' = {
  name: name
  location: location
  kind: 'StorageV2'
  sku: {
    name: storageSku
  }
  properties: {
    allowBlobPublicAccess: false
  }
}

output id string = storageaccount.id