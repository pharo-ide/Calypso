*Calypso-NavigationModel
checkCalypsoItem: anObject isSimilarTo: anotherObject

	anObject class = anotherObject class ifFalse: [ ^false ].
	
	^(self checkCalypsoItem: anObject isEqualTo: anotherObject) or: [ 
		 anObject defaultNameForCalypso = anotherObject defaultNameForCalypso]