testing
representsObjectEqualTo: anObject
	type = anObject calypsoEnvironmentType ifFalse: [ ^false ].
	
	^type checkCalypsoItem: actualObject isEqualTo: anObject