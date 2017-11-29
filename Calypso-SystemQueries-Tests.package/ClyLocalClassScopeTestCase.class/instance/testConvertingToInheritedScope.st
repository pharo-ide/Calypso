tests
testConvertingToInheritedScope
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope asInheritedScope.
	
	self assert: convertedScope class equals: ClySuperclassScope.
	self assert: convertedScope localClassScope equals: self scopeClass.
	self assert: convertedScope basisObjects equals: scope basisObjects.
	self assert: convertedScope environment equals: environment.