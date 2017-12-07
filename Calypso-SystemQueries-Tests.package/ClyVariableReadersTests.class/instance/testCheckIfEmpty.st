tests
testCheckIfEmpty
	query
		scope:
			(ClyMethodScope
				ofAll: {(self class >> #reader1OfVar1)}
				in: environment).
	self deny: query checkEmptyResult.
	query
		scope: (ClyMethodScope ofAll: {(self class >> #writerOfVar1)} in: environment).
	self assert: query checkEmptyResult