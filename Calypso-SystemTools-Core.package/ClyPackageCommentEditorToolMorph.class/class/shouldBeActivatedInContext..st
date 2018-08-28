testing
shouldBeActivatedInContext: aBrowserContext
	^aBrowserContext isPackageSelected and: [aBrowserContext isClassSelected not]