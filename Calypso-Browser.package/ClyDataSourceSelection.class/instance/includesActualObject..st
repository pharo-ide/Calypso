testing
includesActualObject: anObject
	^items anySatisfy: [ :each | each includesActualObject: anObject ]