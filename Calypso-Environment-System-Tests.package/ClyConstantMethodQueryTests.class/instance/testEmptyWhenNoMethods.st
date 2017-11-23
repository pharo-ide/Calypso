tests
testEmptyWhenNoMethods
	query scope: (ClyMethodScope of: {self class >> #method1} in: environment).
	query methods: #().
	self assert: query checkEmptyResult