comparison
checkItem: anObject isSimilarTo: anotherObject

	self class = anotherObject class ifFalse: [ ^false ].
	
	^(self checkItem: anObject isEqualTo: anotherObject) or: [ 
		 anObject defaultNameForCalypso = anotherObject defaultNameForCalypso]