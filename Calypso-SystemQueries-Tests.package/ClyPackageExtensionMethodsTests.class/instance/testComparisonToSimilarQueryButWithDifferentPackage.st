tests
testComparisonToSimilarQueryButWithDifferentPackage

	| query2 |
	query package: Object package.
	query2 := self createQuery.
	query2 package: String package.
	
	self deny: query = query2