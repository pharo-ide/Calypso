tests
testFillingWithOnlyTraitWithoutUsers

	queryResult environmentScope: (ClyTraitUserScope of: {ClyTraitRoot1}).
	
	queryResult fillWith: {ClyTraitRoot1}.
		
	self assertItems: { ClyTraitRoot1. 0} 