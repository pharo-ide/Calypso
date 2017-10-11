testing
isSameAs: anotherEnvironmentItem

	type = anotherEnvironmentItem type ifFalse: [ ^false ].
	
	^type checkCalypsoItem: actualObject isSameAs: anotherEnvironmentItem actualObject