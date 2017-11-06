tests
createQuery

	^ClyFilteringQuery 
		for: (ClySimpleQueryExampleReturningScopeBasis from: (ClyScope of: { self class }))
		by: (ClyItemNameFilter substringPattern: 'FilteringQueryTests').