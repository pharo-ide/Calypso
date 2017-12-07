tests
testCheckIfEmpty
	query
		scope:
			(ClyMethodScope
				ofAll: {(self class >> #reference1OfClass)}
				in: environment).
	self deny: query checkEmptyResult.
	query
		scope:
			(ClyMethodScope
				ofAll: {(self class >> #referenceOfAnotherClass)}
				in: environment).
	self assert: query checkEmptyResult