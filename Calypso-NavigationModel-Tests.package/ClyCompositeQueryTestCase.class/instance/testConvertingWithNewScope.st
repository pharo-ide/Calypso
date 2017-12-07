tests
testConvertingWithNewScope
	| newScope convertedQuery |
	newScope := ClyScopeExample2 of: #someBasis in: environment.
	
	convertedQuery := query withScope: newScope.
	
	self assert: convertedQuery class equals: query class.
	self assert: convertedQuery requiredResult == query requiredResult.
	self
		assert: (convertedQuery subqueries collect: #class)
		equals: (query subqueries collect: #class).
	self
		assert: (convertedQuery subqueries collect: #scope as: Set)
		equals: {newScope} asSet