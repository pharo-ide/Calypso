tests
testConvertingWithNewScopeWhenAllSubqueriesAreSameKind
	| newScope convertedQuery |
	query
		subqueries:
			{(self subqueryInScope: ClyScopeExample of: {Array}).
			(self subqueryInScope: ClyScopeExample2 of: {String})}.
	newScope := ClyScopeExample2 ofAll: #(someBasis) in: environment.
	convertedQuery := query withScope: newScope.
	self
		assert: convertedQuery class
		equals: query subqueries anyOne class.
	self assert: convertedQuery scope equals: newScope.
	self assert: convertedQuery requiredResult == query requiredResult