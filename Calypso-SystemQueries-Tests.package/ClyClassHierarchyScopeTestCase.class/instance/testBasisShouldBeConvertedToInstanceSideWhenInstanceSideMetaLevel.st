tests
testBasisShouldBeConvertedToInstanceSideWhenInstanceSideMetaLevel
	
	scope := self scopeClass ofAll: { Object class. Array } localScope: ClyInstanceSideScope.
	
	self assert: scope basisObjects equals: {Object. Array} asSet