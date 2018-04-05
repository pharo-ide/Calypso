testing
isSimilarTo: anotherBrowserItem

	self type = anotherBrowserItem type ifFalse: [ ^false ].
	
	^name = anotherBrowserItem name or: [ self isEqualTo: anotherBrowserItem ]