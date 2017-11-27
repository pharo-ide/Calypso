tests
testBasisShouldBeConvertedToInstanceSideWhenInstanceSideMetaLevel
	
	scope := self scopeClass of: { Object class. Array } metaLevel: ClyInstanceSideScope.
	
	self assert: scope basisObjects equals: {Object. Array} asSet