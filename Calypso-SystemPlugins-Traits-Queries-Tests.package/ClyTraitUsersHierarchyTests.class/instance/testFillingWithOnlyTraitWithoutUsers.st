tests
testFillingWithOnlyTraitWithoutUsers
	
	queryResult fillWith: {ClyTraitRoot1}.
		
	self assertItems: { ClyTraitRoot1. 0} 