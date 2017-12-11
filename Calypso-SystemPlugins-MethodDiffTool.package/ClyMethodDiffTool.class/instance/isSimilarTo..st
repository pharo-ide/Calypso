testing
isSimilarTo: anotherBrowserTool
	(super isSimilarTo: anotherBrowserTool) ifFalse: [ ^false ].
	
	^{leftMethod. rightMethod} asIdentitySet = {anotherBrowserTool leftMethod. anotherBrowserTool rightMethod  }