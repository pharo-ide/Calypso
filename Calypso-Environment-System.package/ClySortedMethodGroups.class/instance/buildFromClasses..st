building
buildFromClasses: classes

	groupProviders := environment collectMethodGroupProvidersFor: classes.
	groupProviders do: [ :each | each buildGroupItemsOn: items]