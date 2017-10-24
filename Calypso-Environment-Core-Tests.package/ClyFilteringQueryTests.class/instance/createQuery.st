tests
createQuery

	^ClyFilteringQuery 
		for: ClySimpleQueryExampleReturningScopeBasis new
		by: (ClyItemNameFilter substringPattern: 'FilteringQueryTests').