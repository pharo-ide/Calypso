tests
testCreationOnMultipleScopeOfSameBasis

	| queryClass |
	queryClass := query class.
	query := queryClass 
		fromAll: {ClyScopeExample. ClyScopeExample2 } of: { Array } in: environment.
	
	self assert: query class equals: ClyUnionQuery.
	self assert: query subqueries equals: {
		queryClass from: ClyScopeExample of: { Array } in: environment.
		queryClass from: ClyScopeExample2 of: { Array } in: environment.
	} asSet.