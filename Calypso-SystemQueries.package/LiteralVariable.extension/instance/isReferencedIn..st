*Calypso-SystemQueries
isReferencedIn: aMethod 
	
	^(self isReadIn: aMethod) or: [ self isWrittenIn: aMethod ]