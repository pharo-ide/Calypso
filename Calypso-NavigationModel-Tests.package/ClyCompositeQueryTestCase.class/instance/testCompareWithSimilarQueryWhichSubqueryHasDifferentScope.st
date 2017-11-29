tests
testCompareWithSimilarQueryWhichSubqueryHasDifferentScope

	| query2 |
	query2 := self queryClass with: { self subqueryInScopeOf: { self class superclass }}.
	
	self deny: query = query2