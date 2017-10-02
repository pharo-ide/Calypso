testing
canBeExecutedInContext: aToolContext
	(super canBeExecutedInContext: aToolContext) ifFalse: [ ^false ].
	
	^aToolContext isTraitSelected