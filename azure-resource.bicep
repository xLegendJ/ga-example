param location string = 'centralus'
param storageName string = 'gastorage' 

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: '${storageName}yui8'
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS' // Premium storage for better performance
  }
  properties: {
    accessTier: 'Hot' // Hot tier for frequently accessed data
  }
}
