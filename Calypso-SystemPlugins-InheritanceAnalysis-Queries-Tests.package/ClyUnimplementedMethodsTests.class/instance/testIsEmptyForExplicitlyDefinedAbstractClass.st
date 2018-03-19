tests
testIsEmptyForExplicitlyDefinedAbstractClass

	query scope: (ClyClassScope of: ClyExplicitAbstractClassExample in: environment).

	self assert: query checkEmptyResult.
	
	self executeQuery.
	
	self assert: foundSelectors isEmpty