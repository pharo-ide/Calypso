building
buildFromClasses: classes

	environment pluginsDo: [ :plugin |
		groupProviders := plugin collectMethodGroupProvidersFor: classes.
		groupProviders do: [ :each | each buildGroupItemsOn: items]]