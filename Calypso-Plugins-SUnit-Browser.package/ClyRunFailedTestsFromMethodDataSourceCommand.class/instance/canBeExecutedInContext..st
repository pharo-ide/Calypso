testing
canBeExecutedInContext: aBrowserContext
	| testResult |
	(super canBeExecutedInContext: aBrowserContext) ifFalse: [ ^false].
	
	testResult := aBrowserContext browser resultView dataSource getMetaProperty: ClyTestResultProperty.
	^testResult hasBrokenTests