running
subqueryFromScope: aScope
	aScope bindTo: environment.
	^ ClyQueryExampleReturningScopeBasis
		from: aScope