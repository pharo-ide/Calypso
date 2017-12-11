testing
isSimilarTo: anotherBrowserTool
	(super isSimilarTo: anotherBrowserTool) ifFalse: [ ^false ].
	
	^methodClass == anotherBrowserTool methodClass
		and: [ methodTags = anotherBrowserTool methodTags 
				and: [ extendingPackage = anotherBrowserTool extendingPackage ] ]