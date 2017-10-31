testing
isEqualTo: anotherBrowserItem

	type = anotherBrowserItem type ifFalse: [ ^false ].
	
	^type checkCalypsoItem: actualObject isEqualTo: anotherBrowserItem actualObject