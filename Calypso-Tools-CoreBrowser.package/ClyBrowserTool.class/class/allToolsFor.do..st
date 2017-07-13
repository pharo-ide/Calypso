accessing
allToolsFor: aBrowserContext do: actionBlock

	self allSubclassesDo: [ :toolClass | 		
		((toolClass canBeUsedInContext: aBrowserContext)
			and: [ toolClass shouldBeActivatedInContext: aBrowserContext ])
				ifTrue: [ actionBlock value: toolClass ]			
	]