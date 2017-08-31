default
installNewPlugin: anEnvironmentPlugin

	defaultGlobalEnvironments do: [ :each | 
		(anEnvironmentPlugin canBeInstalledIntoGlobalEnvironment: each)
			ifTrue: [ each addPlugin: anEnvironmentPlugin]]