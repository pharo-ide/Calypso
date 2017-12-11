testing
isSameAs: anotherBrowserItem

	type = anotherBrowserItem type ifFalse: [ ^false ].
	
	^type checkCalypsoItem: actualObject isSameAs: anotherBrowserItem actualObject