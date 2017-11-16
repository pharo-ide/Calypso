tests
testEmptyWhenNoMethods

	query scope: (ClyMethodScope of: {self class >> #method1}).
	query methods: #().
	
	self assert: (query isEmptyIn: environment)