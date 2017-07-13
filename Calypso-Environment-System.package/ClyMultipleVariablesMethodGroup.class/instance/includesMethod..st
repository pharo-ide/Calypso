testing
includesMethod: aMethod
	^variables anySatisfy: [ :each | 
		(each isReadIn: aMethod) or: [ each isWrittenIn: aMethod]]