helpers
createQueryFromScope: aScope
	aScope bindTo: environment.
	^ ClyQueryExampleReturningScopeBasis from: aScope