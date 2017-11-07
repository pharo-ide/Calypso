tests
createQuery

	^ClyFilteringQuery 
		for: (ClyQueryExampleReturningScopeBasis from: (ClyScopeExample of: { self class }))
		by: (ClyItemNameFilter substringPattern: 'FilteringQueryTests').