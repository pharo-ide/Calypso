tests
testCheckIfEmpty

	query scope: (ClyMethodScope of: {self class >> #sender1OfMessage1}).
	self deny: (query isEmptyIn: environment).

	query scope: (ClyMethodScope of: {self class >> #senderOfMessage2}).
	self assert: (query isEmptyIn: environment)