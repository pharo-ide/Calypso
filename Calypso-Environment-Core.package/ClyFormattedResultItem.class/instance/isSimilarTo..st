testing
isSimilarTo: anotherEnvironmentItem

	type = anotherEnvironmentItem type ifFalse: [ ^false ].
	
	^name = anotherEnvironmentItem name or: [ self isEqualTo: anotherEnvironmentItem ]