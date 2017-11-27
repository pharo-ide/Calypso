tests
testBasisShouldBeConvertedToClassSideWhenClassSideMetaLevel
	
	scope := self scopeClass of: { Object class. Array } metaLevel: ClyClassSideScope.
	
	self assert: scope basisObjects equals: {Object class. Array class} asSet