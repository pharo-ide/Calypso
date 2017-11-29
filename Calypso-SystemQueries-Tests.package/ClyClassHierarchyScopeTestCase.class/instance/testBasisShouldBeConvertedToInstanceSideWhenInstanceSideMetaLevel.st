tests
testBasisShouldBeConvertedToInstanceSideWhenInstanceSideMetaLevel
	
	scope := self scopeClass of: { Object class. Array } localScope: ClyInstanceSideScope.
	
	self assert: scope basisObjects equals: {Object. Array} asSet