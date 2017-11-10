tests
testCreationOnMultipleScopeOfSameBasis

	| queryClass |
	queryClass := query class.
	query := queryClass fromAll: {ClyScopeExample. ClyScopeExample2 } of: { Array }.
	
	self assert: query class equals: ClyCompositeQuery.
	self assert: query subqueries equals: {
		queryClass from: ClyScopeExample of: { Array }.
		queryClass from: ClyScopeExample2 of: { Array }.
	}.