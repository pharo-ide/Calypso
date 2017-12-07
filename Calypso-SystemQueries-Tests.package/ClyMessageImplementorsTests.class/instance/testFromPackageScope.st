tests
testFromPackageScope
	
	self queryFromScope: ClyPackageScope of: self class package.
	
	self assert: resultItems size equals: 3.	
	self assert: (resultItems identityIncludes: self class >> self targetSelector).
	self assert: (resultItems identityIncludes: self class classSide >> self targetSelector).
	self assert: (resultItems identityIncludes: self class superclass >> self targetSelector).