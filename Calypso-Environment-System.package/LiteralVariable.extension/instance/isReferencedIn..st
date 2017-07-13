*Calypso-Environment-System
isReferencedIn: aMethod 
	
	^(self isReadIn: aMethod) or: [ self isWrittenIn: aMethod ]