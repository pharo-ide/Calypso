testing
isWrittenIn: aMethod
	
	(self isAccessibleFrom: aMethod origin)	ifFalse: [ ^false ].
		
	^actualVariable isWrittenIn: aMethod 