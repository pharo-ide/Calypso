testing
isReadIn: aMethod
	
	(self isAccessibleFrom: aMethod origin)	ifFalse: [ ^false ].
	
	^actualVariable isReadIn: aMethod 