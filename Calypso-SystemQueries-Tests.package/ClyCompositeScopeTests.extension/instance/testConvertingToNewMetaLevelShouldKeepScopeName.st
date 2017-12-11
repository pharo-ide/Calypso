*Calypso-SystemQueries-Tests
testConvertingToNewMetaLevelShouldKeepScopeName
	| convertedScope |
	scope := ClyCompositeScope on: {
		ClyClassScope of: Object in: environment.
		ClySubclassScope of: Array in: environment}.
	scope name: 'test scope'.
		
	convertedScope := scope withMetaLevel: ClyInstanceSideScope.
	
	self assert: convertedScope name equals: 'test scope'