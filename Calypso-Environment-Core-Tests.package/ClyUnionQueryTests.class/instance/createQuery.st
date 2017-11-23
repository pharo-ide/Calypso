running
createQuery
	^ClyUnionQuery with: { 
		ClyQueryExampleReturningScopeBasis from: ClyScopeExample of: {self class} in: environment.
		ClyQueryExampleReturningScopeBasis2 from: ClyScopeExample2 of: {self class superclass} in: environment}