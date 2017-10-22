tests
createQuery

	^ClyFilteringQuery 
		for: ClyScopeBasisQueryStub new
		by: (ClyItemNameFilter substringPattern: 'FilteringQueryTests').