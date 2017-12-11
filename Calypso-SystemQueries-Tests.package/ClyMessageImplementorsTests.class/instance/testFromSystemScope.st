tests
testFromSystemScope

	self queryFromScope: ClySystemEnvironmentScope of: ClySystemEnvironment currentImage.
	
	self assert: resultItems size equals: 3.	
	self assert: (resultItems identityIncludes: self class >> self targetSelector).
	self assert: (resultItems identityIncludes: self class classSide >> self targetSelector).
	self assert: (resultItems identityIncludes: self class superclass >> self targetSelector).