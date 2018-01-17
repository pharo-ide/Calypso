testing
representsObject: anObject
	actualObject == anObject ifTrue: [ ^true ].
	
	type = anObject calypsoEnvironmentType ifFalse: [ ^false ].
	
	^type checkCalypsoItem: actualObject isSameAs: anObject