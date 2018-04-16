tests
testIsEmptyForExplicitlyDefinedAbstractMetaclass

	query scope: (ClyClassScope of: ClyExplicitAbstractClassExample class in: environment).

	self assert: query checkEmptyResult.
	
	self executeQuery.
	
	self assert: foundSelectors isEmpty