tests
createQuery

	^ClyFilterQuery 
		for: (ClyQueryExampleReturningScopeBasis 
					from: (ClyScopeExample of: { self class } in: environment))
		filter: (ClyItemNameFilter substringPattern: 'FilterQueryTests').