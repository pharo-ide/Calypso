testing
canBeExecutedInContext: aBrowserContext
	| testResult |
	(super canBeExecutedInContext: aBrowserContext) ifFalse: [ ^false].
	
	testResult := aBrowserContext browser methodView dataSource getMetaProperty: ClyTestResultProperty.
	^testResult hasBrokenTests