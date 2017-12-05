tests
testHasBasisCritiquesAsBaseQuery

	query := query class new.
	self assert: query baseCritiqueQuery class equals: ClyAllBasisCritiques 