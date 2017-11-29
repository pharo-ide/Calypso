tests
testFromPackageScope

	self queryInScope: ClyPackageScope of: { self class package}.
	
	self assert: resultItems size equals: 2.	
	self assert: (resultItems identityIncludes: self class >> #method1).
	self assert: (resultItems identityIncludes: self class >> #method2)