testing
isWrittenIn: aMethod
	
	(self isAccessibleFrom: aMethod origin)	ifFalse: [ ^false ].
		
	^slot isWrittenIn: aMethod 