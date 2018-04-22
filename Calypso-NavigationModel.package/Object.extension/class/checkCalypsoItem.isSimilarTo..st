*Calypso-NavigationModel
checkCalypsoItem: anObject isSimilarTo: anotherObject

	self = anotherObject calypsoBrowserType ifFalse: [ ^false ].
	
	^(self checkCalypsoItem: anObject isEqualTo: anotherObject ) or: [ 
		(self defaultTitleForCalypsoItem: anObject) 
			= (self defaultTitleForCalypsoItem: anotherObject)]