tests
createQuery
	^ ClyFilterQuery
		for:
			(ClyQueryExampleReturningScopeBasis
				from: (ClyScopeExample ofAll: {self class} in: environment))
		filter: (ClyItemNameFilter substringPattern: 'FilterQueryTests')