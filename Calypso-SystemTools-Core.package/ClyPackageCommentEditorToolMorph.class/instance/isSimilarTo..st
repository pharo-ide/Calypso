testing
isSimilarTo: anotherBrowserTool
	(super isSimilarTo: anotherBrowserTool) ifFalse: [ ^false ].
	
	^editingPackage = anotherBrowserTool editingPackage