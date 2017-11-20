printing
printClassesOn: aStream

	aStream nextPutAll: self tag; nextPutAll: ': '.
	super printClassesOn: aStream