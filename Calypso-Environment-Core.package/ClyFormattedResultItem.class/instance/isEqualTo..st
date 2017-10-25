testing
isEqualTo: anotherEnvironmentItem

	type = anotherEnvironmentItem type ifFalse: [ ^false ].
	
	^type checkCalypsoItem: actualObject isEqualTo: anotherEnvironmentItem actualObject