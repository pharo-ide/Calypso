testing
canBeExecutedInContext: aBrowserContext
	(super canBeExecutedInContext: aBrowserContext) ifFalse: [ ^false ].
	
	^aBrowserContext isClassSelected 
		and: [ aBrowserContext isClassScriptSelected ]
	