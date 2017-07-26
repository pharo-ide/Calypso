testing
isSameAs: anotherDataSource

	self class == anotherDataSource class ifFalse: [ ^false ].
	
	^metadata isAboutSameContentAs: anotherDataSource metadata