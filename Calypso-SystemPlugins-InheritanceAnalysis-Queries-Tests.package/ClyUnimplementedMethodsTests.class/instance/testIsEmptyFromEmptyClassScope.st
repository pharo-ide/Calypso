tests
testIsEmptyFromEmptyClassScope
	query scope: (ClyClassScope ofAll: #() in: environment).
	self assert: query checkEmptyResult