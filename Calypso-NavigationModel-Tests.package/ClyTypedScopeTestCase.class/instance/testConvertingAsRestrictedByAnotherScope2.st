tests
testConvertingAsRestrictedByAnotherScope2
	| convertedScope restrictedScope |
	scope := self singleScopeSample.
	restrictedScope := self multipleScopeSample.
	
	convertedScope := scope restrictedBy: restrictedScope.
	
	self assert: convertedScope class equals: scope class.
	self assert: convertedScope basisObjects equals: restrictedScope basisObjects.