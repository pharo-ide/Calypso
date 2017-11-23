tests
testConvertingWithNewScope
	| newScope convertedQuery |
	newScope := ClyScopeExample2 of: #(someBasis) in: environment.
	convertedQuery := query withScope: newScope.
	
	self assert: convertedQuery class equals: query class.
	self assert: convertedQuery requiredResult == query requiredResult.
	self assert: convertedQuery subqueries first class equals: query subqueries first class.
	self assert: convertedQuery subqueries first scope equals: newScope.
	self assert: convertedQuery subqueries last class equals: query subqueries last class.
	self assert: convertedQuery subqueries last scope equals: newScope