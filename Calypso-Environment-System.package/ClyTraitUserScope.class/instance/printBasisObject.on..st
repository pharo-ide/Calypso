printing
printBasisObject: aClass on: aStream

	^aStream nextPutAll: aClass name; nextPutAll: ' trait users'