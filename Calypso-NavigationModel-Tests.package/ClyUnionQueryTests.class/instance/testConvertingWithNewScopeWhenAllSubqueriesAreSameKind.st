tests
testConvertingWithNewScopeWhenAllSubqueriesAreSameKind
	| newScope convertedQuery |
	query
		subqueries:
			{(self subqueryFromScope: ClyScopeExample of: Array).
			(self subqueryFromScope: ClyScopeExample2 of: String)}.
	newScope := ClyScopeExample2 of: #someBasis in: environment.
	convertedQuery := query withScope: newScope.
	self
		assert: convertedQuery class
		equals: query subqueries anyOne class.
	self assert: convertedQuery scope equals: newScope.
	self assert: convertedQuery requiredResult == query requiredResult