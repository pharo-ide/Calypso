tests
testAdoptQuery
	| query adoptedQuery |
	scope := ClyCompositeScope on: {
		ClyScopeExample of: {Object} in: environment.
		ClyScopeExample2 of: {Array} in: environment}.
	query := ClyQueryExampleReturningScopeBasis new.
	query extraParameter: #testParameter.
	adoptedQuery := scope adoptQuery: query.
	
	self assert: adoptedQuery class equals: ClyUnionQuery.
	self assert: adoptedQuery subqueries size equals: 2.
	adoptedQuery subqueries do: [:each | 
		self assert: each class equals: query class.
		self assert: each extraParameter equals: #testParameter].
	self 
		assert: (adoptedQuery subqueries collect: #scope) 
		equals: scope subscopes asSet