testing
isSameAs: anotherDataSource

	self class == anotherDataSource class ifFalse: [ ^false ].
	
	^self isBasedOn: anotherDataSource query