testing
isReferencedIn: aMethod
	
	(self isAccessibleFrom: aMethod origin)	ifFalse: [ ^false ].
		
	^(actualVariable isReadIn: aMethod) or: [ actualVariable isWrittenIn: aMethod ]