tests
testIsSameKindAsSimilarQuery

	| queryResult2 |
	queryResult2 := self createQueryResult.
	
	self assert: (queryResult isSameKindAs: queryResult2)