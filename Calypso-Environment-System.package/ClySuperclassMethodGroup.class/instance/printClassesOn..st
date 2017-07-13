printing
printClassesOn: aStream
	aStream nextPutAll: superclass name; nextPutAll: ': '.
	super printClassesOn: aStream.