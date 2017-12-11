testing
isSimilarTo: anotherBrowserTool
	^self class = anotherBrowserTool class
		and: [ testClass == anotherBrowserTool testClass ]