tests
testComparisonWithSimilarQueryButWithDifferentGroup

	| query2 |
	query2 := self createQuery.
	query2 critiqueGroupName: 'anotherGroup'.
	
	self deny: query = query2