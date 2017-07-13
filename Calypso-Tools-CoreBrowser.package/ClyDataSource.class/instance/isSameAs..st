testing
isSameAs: anotherDataSource

	self class == anotherDataSource class ifFalse: [ ^false ].
	
	^self content == anotherDataSource content