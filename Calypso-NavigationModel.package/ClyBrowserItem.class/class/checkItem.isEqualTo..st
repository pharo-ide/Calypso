comparison
checkItem: anObject isEqualTo: anObject2
	self = anObject2 calypsoBrowserType ifFalse: [ ^false ].
	
	^anObject = anObject2