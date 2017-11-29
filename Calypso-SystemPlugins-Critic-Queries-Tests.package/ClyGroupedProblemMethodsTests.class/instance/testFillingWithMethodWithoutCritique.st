tests
testFillingWithMethodWithoutCritique

	queryResult fillWith: { ClyAnalyzedClassStub classSide >> #methodWithoutCritiques}.
	
	self assertItems: #()