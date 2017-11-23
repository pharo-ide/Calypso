tests
testComparisonToSimilarQueryWhichReturningDifferentObjects
	
	| query2 |
	query2 := self createQuery.
	query2 resultItems: #(anotherResult).
	
	self deny: query = query2