accessing
getPlugin: environmentPluginClass ifAbsent: absentBlock
	^plugins detect: [ :each | each class = environmentPluginClass ] ifNone: absentBlock