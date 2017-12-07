tests
testCompareWithSimilarQueryWhichSubqueryHasDifferentScope

	| query2 |
	query2 := self queryClass with: {self subqueryFromScopeOf: self class superclass}.
	
	self deny: query = query2