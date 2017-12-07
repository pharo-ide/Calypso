running
subqueryInScope: aScopeClass of: basisObjects
	^ ClyQueryExampleReturningScopeBasis
		from: (aScopeClass ofAll: basisObjects in: environment)