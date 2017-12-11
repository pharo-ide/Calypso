tests
testComparisonToSimilarResultButWithWithDifferentBaseResult

	| result2 |
	queryResult := ClyExtensionLastSortedClasses simple.
	result2 := ClyExtensionLastSortedClasses hierarchical.
	
	self deny: queryResult = result2