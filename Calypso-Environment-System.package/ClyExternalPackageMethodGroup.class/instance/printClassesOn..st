printing
printClassesOn: aStream
	aStream nextPutAll: self package name; nextPutAll: ': '.
	super printClassesOn: aStream.