printing
printClassesOn: aStream
	aStream nextPutAll: visibleClass name; nextPutAll: ': '.
	super printClassesOn: aStream.