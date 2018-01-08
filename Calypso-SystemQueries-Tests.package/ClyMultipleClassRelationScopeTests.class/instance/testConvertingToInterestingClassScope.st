tests
testConvertingToInterestingClassScope
	| convertedScope |
	scope := ClyMultipleClassRelationScope 
		of: {String} merging: { ClySuperclassScope. ClySubclassScope }.
	scope localScopeClass: ClyInstanceSideScope.
	
	convertedScope := scope asInterestingClassScope.
	
	self deny: convertedScope == scope.
	self assert: convertedScope class equals: ClyMultipleClassRelationScope.
	self 
		assert: convertedScope relationScopeClasses 
		equals: {ClyInterestingSuperclassScope. ClySubclassScope}.
	self assert: convertedScope basisObjects equals: scope basisObjects.
	self assert: convertedScope localScopeClass equals: scope localScopeClass.
	self assert: convertedScope environment equals: scope environment