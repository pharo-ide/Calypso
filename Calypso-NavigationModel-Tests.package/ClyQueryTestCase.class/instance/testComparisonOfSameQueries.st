tests
testComparisonOfSameQueries

	| query2 |
	self assert: query equals: query.
	
	query2 := self createQuery.		
	self assert: query equals: query2.
	self assert: query hash equals: query2 hash