tests
testCheckIfEmpty

	query scope: (ClyMethodScope of: {self class >> self targetSelector}).
	self deny: (query isEmptyIn: environment).

	query scope: (ClyMethodScope of: {self class >> #messageImplementor2}).
	self assert: (query isEmptyIn: environment)