tests
testFillingWithEmptyList

	queryResult fillWith: { }.
	
	self assertItems: {ClyCurrentMetaLevelMethodGroup. 0}