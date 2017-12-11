tests
testComparisonWithSimilarQueryBasedOnDifferentBaseCritiqueQuery

	| query2 |
	query baseCritiqueQuery: ClyAllBasisCritiques new.
	query2 := self createQuery.
	query2 baseCritiqueQuery: ClyAllMethodCritiques new.
	
	self deny: query = query2