tests
testIsEmptyFromEmptyMethodScope
	query scope: (ClyMethodScope of: #() in: environment).
	self assert: query checkEmptyResult