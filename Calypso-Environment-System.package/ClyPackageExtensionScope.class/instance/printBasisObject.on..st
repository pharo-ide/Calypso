printing
printBasisObject: aPackage on: aStream

	^aStream nextPutAll: aPackage name; nextPutAll: ' extensions'