tests
testComparisonToSimilarQueryWithDifferentTag
	
	| query2 |
	query2 := self createQuery.
	query2 tag: #AnotherTag1.
	
	self deny: query = query2