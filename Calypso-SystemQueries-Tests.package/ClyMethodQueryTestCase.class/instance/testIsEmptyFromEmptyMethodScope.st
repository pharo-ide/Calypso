tests
testIsEmptyFromEmptyMethodScope
	query scope: (ClyMethodScope ofAll: #() in: environment).
	self assert: query checkEmptyResult