tests
testBasisShouldBeConvertedToClassSideWhenClassSideMetaLevel
	
	scope := self scopeClass ofAll: { Object class. Array } localScope: ClyClassSideScope.
	
	self assert: scope basisObjects equals: {Object class. Array class} asSet