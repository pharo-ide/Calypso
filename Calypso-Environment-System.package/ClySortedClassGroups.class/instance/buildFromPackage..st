building
buildFromPackage: aPackage
		
	| providers |
	environment pluginsDo: [ :plugin |
		providers := plugin collectClassGroupProvidersFor: aPackage.
		providers do: [ :each | each buildGroupItemsOn: items]]