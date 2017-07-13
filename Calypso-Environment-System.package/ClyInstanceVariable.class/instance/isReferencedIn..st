testing
isReferencedIn: aMethod
	
	(self isAccessibleFrom: aMethod origin)	ifFalse: [ ^false ].
		
	^(slot isReadIn: aMethod) or: [ slot isWrittenIn: aMethod ]