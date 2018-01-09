testing
isAutoActivated
	(SlowPluginsAreDisabled = true and: [ self isSlow ]) ifTrue: [ ^false ].
	
	^super isAutoActivated