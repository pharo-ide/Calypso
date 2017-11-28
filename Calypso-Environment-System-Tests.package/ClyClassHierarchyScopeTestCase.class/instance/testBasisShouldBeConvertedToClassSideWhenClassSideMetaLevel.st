tests
testBasisShouldBeConvertedToClassSideWhenClassSideMetaLevel
	
	scope := self scopeClass of: { Object class. Array } localScope: ClyClassSideScope.
	
	self assert: scope basisObjects equals: {Object class. Array class} asSet