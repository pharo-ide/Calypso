tests
testCreationFromTwoDifferentTypedQueries

	| subquery1 subquery2 |
	subquery1 := ClyQueryExampleReturningScopeBasis from: ClyScopeExample of: {Array} in: environment.
	subquery2 := ClyQueryExampleReturningScopeBasis2 from: ClyScopeExample of: {String} in: environment.
	
	query := subquery1, subquery2.
	
	self assert: query class equals: self queryClass.
	self assert: query subqueries equals: {subquery1. subquery2}.
	self assert: query requiredResult == subquery1 requiredResult