tests
testNotEmptyFromEmptyMethodScope

	query scope: (ClyMethodScope of: #()).
	
	self deny: (query isEmptyIn: environment)