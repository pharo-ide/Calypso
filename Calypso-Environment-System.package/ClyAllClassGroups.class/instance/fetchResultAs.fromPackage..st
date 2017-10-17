execution
fetchResultAs: aQueryResult fromPackage: aPackage

	| providers |
	environment pluginsDo: [ :plugin |
		providers := plugin collectClassGroupProvidersFor: aPackage.
		providers do: [ :each | each buildGroupItemsOn: aQueryResult]]