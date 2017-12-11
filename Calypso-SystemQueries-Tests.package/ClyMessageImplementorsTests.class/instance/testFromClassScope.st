tests
testFromClassScope
	
	self queryFromScope: ClyBothMetaLevelClassScope of: self class.
	
	self assert: resultItems size equals: 2.	
	self assert: (resultItems identityIncludes: (self class >> self targetSelector)).
	self assert: (resultItems identityIncludes: (self class classSide >> self targetSelector)).