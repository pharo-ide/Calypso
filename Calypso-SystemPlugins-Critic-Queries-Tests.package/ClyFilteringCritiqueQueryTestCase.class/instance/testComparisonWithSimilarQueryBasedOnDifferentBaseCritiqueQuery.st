tests
testComparisonWithSimilarQueryBasedOnDifferentBaseCritiqueQuery

	| query2 |
	query baseCritiqueQuery: ClyAllBasisCritiqueQuery new.
	query2 := self createQuery.
	query2 baseCritiqueQuery: ClyAllMethodCritiqueQuery new.
	
	self deny: query = query2