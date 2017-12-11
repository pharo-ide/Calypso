tests
testConvertingWithNewCompositeScope
	| newScope convertedQuery |
	newScope := ClyCompositeScope on: {
		ClyScopeExample of: #someBasis1 in: environment.
		ClyScopeExample2 of: #someBasis2 in: environment}.
		
	convertedQuery := query withScope: newScope.
	
	self assert: convertedQuery class equals: ClyUnionQuery.
	self
		assert: (convertedQuery subqueries collect: #class as: Set)
		equals: {query class} asSet.
	self
		assert: (convertedQuery subqueries collect: #scope as: Set)
		equals: newScope subscopes asSet