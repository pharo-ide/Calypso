testing
isActiveInContext: aBrowserContext
	^(super isActiveInContext: aBrowserContext)
		and: [ self toolClass shouldBeActivatedInContext: aBrowserContext ]