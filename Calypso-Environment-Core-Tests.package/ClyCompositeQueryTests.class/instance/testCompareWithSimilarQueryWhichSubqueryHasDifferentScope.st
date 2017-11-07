tests
testCompareWithSimilarQueryWhichSubqueryHasDifferentScope

	| query2 |
	query2 := ClyCompositeQuery with: { self subqueryInScopeOf: { self class superclass }}.
	
	self deny: query = query2