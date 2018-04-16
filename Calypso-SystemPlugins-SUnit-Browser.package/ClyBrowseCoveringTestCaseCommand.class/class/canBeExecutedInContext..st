testing
canBeExecutedInContext: aBrowserContext
	(super canBeExecutedInContext: aBrowserContext) ifFalse: [ ^false ].
	
	^ aBrowserContext lastSelectedItem hasProperty: ClyTestedClassProperty