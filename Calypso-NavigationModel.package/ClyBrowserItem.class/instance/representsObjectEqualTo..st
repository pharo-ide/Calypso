testing
representsObjectEqualTo: anObject
	actualObject == anObject ifTrue: [ ^true ].
	
	type = anObject calypsoEnvironmentType ifFalse: [ ^false ].
	
	^type checkCalypsoItem: actualObject isEqualTo: anObject