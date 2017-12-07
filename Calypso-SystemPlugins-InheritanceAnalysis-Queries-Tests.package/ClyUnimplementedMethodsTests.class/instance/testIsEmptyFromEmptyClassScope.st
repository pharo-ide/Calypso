tests
testIsEmptyFromEmptyClassScope
	query scope: (ClyClassScope emptyIn: environment).
	
	self assert: query checkEmptyResult