default
installNewPlugin: anEnvironmentPluginClass
	defaultGlobalEnvironments ifNil: [ ^self ].
	
	defaultGlobalEnvironments do: [ :each | 
		(anEnvironmentPluginClass canBeInstalledIntoGlobalEnvironment: each)
			ifTrue: [ each addPlugin: anEnvironmentPluginClass new]]