tests
testNotEmptyFromEmptyMethodScope
	query scope: (ClyMethodScope of: #()).
	self deny: query checkEmptyResult