tests
testIsEmptyFromEmptyClassScope
	query scope: (ClyClassScope of: #()).
	
	self assert: query checkEmptyResult