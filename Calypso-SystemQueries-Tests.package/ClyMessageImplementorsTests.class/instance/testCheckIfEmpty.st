tests
testCheckIfEmpty
	query
		scope:
			(ClyMethodScope
				ofAll: {(self class >> self targetSelector)}
				in: environment).
	self deny: query checkEmptyResult.
	query
		scope:
			(ClyMethodScope
				ofAll: {(self class >> #messageImplementor2)}
				in: environment).
	self assert: query checkEmptyResult