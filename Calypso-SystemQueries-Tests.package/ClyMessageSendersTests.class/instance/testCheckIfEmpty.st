tests
testCheckIfEmpty
	query scope:	(ClyMethodScope of: (self class >> #sender1OfMessage1) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: (self class >> #senderOfMessage2) in: environment).
	self assert: query checkEmptyResult