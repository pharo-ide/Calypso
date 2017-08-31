default
installNewPlugin: anEnvironmentPluginClass

	defaultGlobalEnvironments do: [ :each | 
		(anEnvironmentPluginClass canBeInstalledIntoGlobalEnvironment: each)
			ifTrue: [ each addPlugin: anEnvironmentPluginClass new]]