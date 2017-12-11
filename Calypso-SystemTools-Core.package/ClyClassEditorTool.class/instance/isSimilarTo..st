testing
isSimilarTo: anotherBrowserTool
	(super isSimilarTo: anotherBrowserTool) ifFalse: [ ^false ].
	
	^editingClass = anotherBrowserTool editingClass