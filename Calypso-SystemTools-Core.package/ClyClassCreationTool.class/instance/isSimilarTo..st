testing
isSimilarTo: anotherBrowserTool
	(super isSimilarTo: anotherBrowserTool) ifFalse: [ ^false ].
	
	^package = anotherBrowserTool package 
		and: [ classTag = anotherBrowserTool classTag ]