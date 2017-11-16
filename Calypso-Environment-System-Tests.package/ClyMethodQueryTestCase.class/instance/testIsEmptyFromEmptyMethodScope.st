tests
testIsEmptyFromEmptyMethodScope

	query scope: (ClyMethodScope of: #()).
	self assert: (query isEmptyIn: environment)