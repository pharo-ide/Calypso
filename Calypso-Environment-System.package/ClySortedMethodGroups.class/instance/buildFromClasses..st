building
buildFromClasses: classes
	environment
		pluginsDo: [ :plugin | 
			groupProviders := plugin collectMethodGroupProviders.
			groupProviders do: [ :each | each buildGroupItemsOn: items ] ]