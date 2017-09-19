testing
canBeUsedInContext: aBrowserContext
	
	^(super canBeUsedInContext: aBrowserContext)
		or: [ aBrowserContext isActivationOf: ClySystemQueryBrowserContext]