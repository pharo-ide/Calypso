accessing
withCachedQueriesDo: aBlock

	queryCache select: [ :each | each notNil ] thenDo: aBlock