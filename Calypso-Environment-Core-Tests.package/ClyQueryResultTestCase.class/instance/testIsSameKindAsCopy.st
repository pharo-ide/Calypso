tests
testIsSameKindAsCopy

	| queryResult2 |
	queryResult2 := queryResult copy.
	
	self assert: (queryResult isSameKindAs: queryResult2)