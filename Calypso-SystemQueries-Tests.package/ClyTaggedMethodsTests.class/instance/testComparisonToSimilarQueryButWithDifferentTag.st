tests
testComparisonToSimilarQueryButWithDifferentTag

	| query2 |
	query tag: #tag1.
	query2 := self createQuery.
	query2 tag: #anotherTag.
	
	self deny: query = query2