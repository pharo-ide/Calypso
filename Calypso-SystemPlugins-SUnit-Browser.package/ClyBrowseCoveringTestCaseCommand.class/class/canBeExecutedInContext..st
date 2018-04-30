testing
canBeExecutedInContext: aBrowserContext
	(super canBeExecutedInContext: aBrowserContext) ifFalse: [ ^false ].

	^ aBrowserContext hasSelectedItems
		ifTrue: [ aBrowserContext lastSelectedItem hasProperty: ClyTestedClassProperty ]
		ifFalse: [ false ]