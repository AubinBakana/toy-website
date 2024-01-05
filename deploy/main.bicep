@description('Name of the web application.')
param appServiceAppName string = 'toyweb-${uniqueString(resourceGroup().id)}'

@description('Define working environment.')
param environmentType string = 'nonprod'

@description('Azure regions/datacenter from where your resources should be deployed from.')
param location string 

@description('The name of the Cosmos DB account. This name must be globally unique.')
param cosmosDBAccountName string = 'toyweb-${uniqueString(resourceGroup().id)}'


// RESOURCES
module AppServicePlan 'modules/app-service.bicep' = {
  name: 'app-service'
  params: {
    appServiceAppName: appServiceAppName
    environmentType: environmentType
    location: location
  }
}

module cosmosDB 'modules/cosmos-db.bicep' = {
  name: 'cosmos-db'
  params: {
    cosmosDBAccountName: cosmosDBAccountName
    environmentType: environmentType
    location: location
  }
}

