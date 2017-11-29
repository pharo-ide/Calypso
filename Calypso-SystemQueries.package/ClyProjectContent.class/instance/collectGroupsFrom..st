building
collectGroupsFrom: aProject 
		
	| providers |
	environment pluginsDo: [ :plugin |
		providers := plugin collectPackageGroupProvidersFor: aProject.
		providers do: [ :each | each buildGroupItemsOn: items]]