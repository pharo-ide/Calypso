helpers
createQueryInScopeOf: basisObjects
	^ ClyQueryExampleReturningScopeBasis
		from: (ClyScopeExample ofAll: basisObjects in: environment)