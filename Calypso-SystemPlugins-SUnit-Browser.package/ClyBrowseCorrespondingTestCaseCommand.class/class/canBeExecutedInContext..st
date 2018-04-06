testing
canBeExecutedInContext: aBrowserContext
	(super canBeExecutedInContext: aBrowserContext)
		ifFalse: [ ^ false ].
	^ aBrowserContext lastSelectedClass isTestCase not
		and: [ aBrowserContext lastSelectedClass correspondingTestCase isNotNil ]