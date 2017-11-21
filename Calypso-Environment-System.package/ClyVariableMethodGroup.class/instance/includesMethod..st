testing
includesMethod: aMethod
	^(self variable isReadIn: aMethod) or: [ self variable isWrittenIn: aMethod]