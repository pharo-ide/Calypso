testing
isSimilarTo: anotherBrowserTool
	(super isSimilarTo: anotherBrowserTool) ifFalse: [ ^false ].
	
	^editingMethod == anotherBrowserTool editingMethod or: 
		[ editingMethod selector == anotherBrowserTool editingMethod selector
			and: [ editingMethod origin == anotherBrowserTool editingMethod origin ] ]