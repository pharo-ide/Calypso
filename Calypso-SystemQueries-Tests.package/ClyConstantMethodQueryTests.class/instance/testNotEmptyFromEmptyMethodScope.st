tests
testNotEmptyFromEmptyMethodScope
	query scope: (ClyMethodScope ofAll: #() in: environment).
	self deny: query checkEmptyResult