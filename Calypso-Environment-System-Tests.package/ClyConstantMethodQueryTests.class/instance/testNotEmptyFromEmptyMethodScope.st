tests
testNotEmptyFromEmptyMethodScope
	query scope: (ClyMethodScope of: #() in: environment).
	self deny: query checkEmptyResult