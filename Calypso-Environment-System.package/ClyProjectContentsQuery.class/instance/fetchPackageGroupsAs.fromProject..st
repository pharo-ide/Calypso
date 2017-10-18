execution
fetchPackageGroupsAs: aQueryResult fromProject: aProject  
	| providers |
	environment pluginsDo: [ :plugin |
		providers := plugin collectPackageGroupProvidersFor: aProject.
		providers do: [ :each | each buildGroupItemsOn: aQueryResult]]