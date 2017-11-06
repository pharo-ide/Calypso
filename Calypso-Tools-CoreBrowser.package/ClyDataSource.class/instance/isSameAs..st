testing
isSameAs: anotherDataSource

	self class == anotherDataSource class ifFalse: [ ^false ].
	
	^metadata isBuiltBySameQueryAs: anotherDataSource metadata