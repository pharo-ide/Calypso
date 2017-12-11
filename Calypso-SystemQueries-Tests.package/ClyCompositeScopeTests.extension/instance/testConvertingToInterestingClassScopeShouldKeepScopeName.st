*Calypso-SystemQueries-Tests
testConvertingToInterestingClassScopeShouldKeepScopeName
	| convertedScope |
	scope := ClyCompositeScope on: {
		ClySuperclassScope of: String. ClySubclassScope of: Array}.
	scope name: 'test scope'.
	
	convertedScope := scope asInterestingClassScope.
	
	self assert: convertedScope name equals: 'test scope'