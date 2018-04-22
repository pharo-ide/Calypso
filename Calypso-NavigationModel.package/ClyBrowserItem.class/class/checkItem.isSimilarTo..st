comparison
checkItem: anObject isSimilarTo: anotherObject

	self = anotherObject calypsoBrowserType ifFalse: [ ^false ].
	
	^(self checkItem: anObject isEqualTo: anotherObject) or: [ 
		 anObject defaultNameForCalypso = anotherObject defaultNameForCalypso]