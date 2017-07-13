printing
printClassesOn: aStream

	aStream nextPutAll: variable name; nextPutAll: ': '.
	super printClassesOn: aStream