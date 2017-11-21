tests
createQuery

	^ClyFilteringQuery 
		for: (ClyQueryExampleReturningScopeBasis 
					from: (ClyScopeExample of: { self class } in: environment))
		by: (ClyItemNameFilter substringPattern: 'FilteringQueryTests').