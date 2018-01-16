testing
isSimilarTo: anotherBrowserItem

	type = anotherBrowserItem type ifFalse: [ ^false ].
	
	^name = anotherBrowserItem name or: [ self isEqualTo: anotherBrowserItem ]