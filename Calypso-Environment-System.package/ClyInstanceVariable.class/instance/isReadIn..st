testing
isReadIn: aMethod
	
	(self isAccessibleFrom: aMethod origin)	ifFalse: [ ^false ].
	
	^slot isReadIn: aMethod 