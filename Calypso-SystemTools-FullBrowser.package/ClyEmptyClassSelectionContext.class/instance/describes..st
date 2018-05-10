testing
describes: aBrowserContext
	^(aBrowserContext isKindOf: ClyFullBrowserContext) 
		and: [aBrowserContext isClassSelected not]