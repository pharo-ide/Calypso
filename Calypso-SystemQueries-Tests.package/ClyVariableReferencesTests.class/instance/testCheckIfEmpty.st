tests
testCheckIfEmpty
	query
		scope:
			(ClyMethodScope
				ofAll: {(self class >> #reference1OfVar1)}
				in: environment).
	self deny: query checkEmptyResult.
	query
		scope:
			(ClyMethodScope
				ofAll: {(self class >> #referenceOfAnotherVar)}
				in: environment).
	self assert: query checkEmptyResult