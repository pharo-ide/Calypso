execution
fetchResultAs: aQueryResult fromClasses: classes

	| groupProviders |
	environment pluginsDo: [ :plugin |
		groupProviders := plugin collectMethodGroupProvidersFor: classes.
		groupProviders do: [ :each | each buildGroupItemsOn: aQueryResult]]