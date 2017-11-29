testing
hasPluginOf: aBrowserPluginClass
	^plugins anySatisfy: [ :each | each class = aBrowserPluginClass ]