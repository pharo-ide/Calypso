accessing
withCachedQueriesDo: aBlock

	queryCache associations 
		select: [ :each | each value notNil ] 
		thenDo: [:each | aBlock value: each key]