tests
testConvertingAsRestrictedByAnotherScope
	| convertedScope restrictedScope |
	scope := self multipleScopeSample.
	restrictedScope := self singleScopeSample.
	
	convertedScope := scope restrictedBy: restrictedScope.
	
	self assert: convertedScope class equals: scope class.
	self assert: convertedScope basisObjects equals: restrictedScope basisObjects.