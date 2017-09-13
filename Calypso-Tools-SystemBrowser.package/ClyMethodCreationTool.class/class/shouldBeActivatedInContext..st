testing
shouldBeActivatedInContext: aBrowserContext
	^aBrowserContext isClassSelected 
		and: [aBrowserContext isMethodSelected not]