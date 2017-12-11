tests
testFillingWithTraitsOfClassWhichIsMissingInGivenList
	
	queryResult fillWith: {
		ClyTraitChild1. ClyTraitChild2. ClyTraitRoot1. ClyTraitChild2Child }.
		
	self assertItems: {
		ClyTraitChild1. 0. ClyTraitRoot1. 1. 
		ClyTraitChild2Child. 0. ClyTraitChild2. 1. ClyTraitRoot1. 2}.