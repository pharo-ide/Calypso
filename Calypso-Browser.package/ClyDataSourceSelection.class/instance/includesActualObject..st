testing
includesActualObject: anObject
	^items anySatisfy: [ :each | each actualObject == anObject ]