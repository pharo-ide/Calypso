testing
canBeExecutedInContext: aBrowserContext
	(super canBeExecutedInContext: aBrowserContext) ifFalse: [ ^false ].
	
	^aBrowserContext isPackageSelected 