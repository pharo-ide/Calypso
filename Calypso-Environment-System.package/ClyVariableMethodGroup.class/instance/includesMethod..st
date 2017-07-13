testing
includesMethod: aMethod
	^(variable isReadIn: aMethod) or: [ variable isWrittenIn: aMethod]