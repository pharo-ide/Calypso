tests
testIsEmptyFromEmptyClassScope
	query scope: (ClyClassScope of: #() in: environment).
	
	self assert: query checkEmptyResult