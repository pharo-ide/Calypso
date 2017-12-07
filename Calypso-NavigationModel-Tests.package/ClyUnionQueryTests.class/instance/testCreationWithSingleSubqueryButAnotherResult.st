tests
testCreationWithSingleSubqueryButAnotherResult

	| subquery |
	subquery := self subqueryFromScopeOf: Array.

	query := ClyUnionQuery with: {subquery} as: #specialResult.
	
	self assert: query class equals: subquery class.
	self assert: query scope equals: subquery scope.
	self assert: query requiredResult equals: #specialResult.
	self deny: subquery requiredResult = #specialResult.