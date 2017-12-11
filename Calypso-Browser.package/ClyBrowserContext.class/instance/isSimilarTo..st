testing
isSimilarTo: anotherBrowserContext
	self class = anotherBrowserContext class ifFalse: [ ^false ].
	
	(selectedItems size = anotherBrowserContext selectedItems size)
		ifFalse: [ ^false ].
		
	^selectedItems allSatisfy: [ :each |
		anotherBrowserContext isAboutSelectedItem: each]