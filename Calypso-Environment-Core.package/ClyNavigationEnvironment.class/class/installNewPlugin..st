default
installNewPlugin: anEnvironmentPluginClass
	defaultGlobalEnvironments ifNil: [ ^self ].
	
	defaultGlobalEnvironments do: [ :each | 
		(anEnvironmentPluginClass isAutoActivatedOn: each)
			ifTrue: [ each addPlugin: anEnvironmentPluginClass new]]