printing
printClassesOn: aStream
	aStream nextPutAll: package name; nextPutAll: ': '.
	super printClassesOn: aStream.