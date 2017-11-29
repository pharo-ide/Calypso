tests
testComparisonWithCopy

	| queryResult2 |
	queryResult2 := queryResult copy.
	
	self assert: queryResult equals: queryResult2