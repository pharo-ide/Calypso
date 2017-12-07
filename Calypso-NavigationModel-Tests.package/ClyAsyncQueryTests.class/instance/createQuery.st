running
createQuery
	^ ClyAsyncQuery
		for:
			(ClyQueryExampleReturningScopeBasis
				from: (ClyScopeExample ofAll: {self class} in: environment))