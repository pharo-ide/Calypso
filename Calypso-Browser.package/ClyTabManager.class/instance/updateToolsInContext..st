updating
updateToolsInContext: aContext

	| affectedTools |
	affectedTools := tools select: [ :each | each canBeUsedInContext: aContext ].
	
	affectedTools 
		select: [ :eachTool | eachTool belongsToBrowserContext: aContext]
		thenDo: [ :eachTool | eachTool updateInNewContext: aContext ]