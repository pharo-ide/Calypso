tests
testComparisonWithQueryOfAnotherGroup

	| query2 |
	query2 := self createQuery.
	query2 groupName: 'another group'.
	
	self deny: query = query2