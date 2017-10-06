testing
isSimilarTo: anotherBrowserContext
	^(super isSimilarTo: anotherBrowserContext)
		and: [ metaLevelScope == anotherBrowserContext metaLevelScope ]