@description('Name of the web application.')
param appServiceAppName string = 'toyweb-${uniqueString(resourceGroup().id)}'

@description('Define working environment.')
param environmentType string = 'nonprod'

@description('Azure regions/datacenter from where your resources should be deployed from.')
param location string 


// RESOURCES
module AppServicePlan 'modules/app-service.bicep' = {
  name: 'app-service'
  params: {
    appServiceAppName: appServiceAppName
    environmentType: environmentType
    location: location
  }
}
