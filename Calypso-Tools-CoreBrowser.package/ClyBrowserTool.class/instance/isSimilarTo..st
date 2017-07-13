testing
isSimilarTo: anotherBrowserTool
	self class = anotherBrowserTool class ifFalse: [ ^false ].
	
	^self belongsToBrowserContext: anotherBrowserTool context