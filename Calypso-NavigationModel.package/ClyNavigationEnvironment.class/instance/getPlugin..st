accessing
getPlugin: environmentPluginClass
	^plugins detect: [ :each | each class = environmentPluginClass ] 