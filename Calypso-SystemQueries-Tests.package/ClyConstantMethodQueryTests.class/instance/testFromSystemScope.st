tests
testFromSystemScope

	self queryFromScope: ClySystemEnvironmentScope of: ClySystemEnvironment currentImage.
	
	self assert: resultItems size equals: 2.	
	self assert: (resultItems identityIncludes: self class >> #method1).
	self assert: (resultItems identityIncludes: self class >> #method2)