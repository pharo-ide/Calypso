tests
testEmptyWhenNoMethods
	query
		scope: (ClyMethodScope ofAll: {(self class >> #method1)} in: environment).
	query methods: #().
	self assert: query checkEmptyResult