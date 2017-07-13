printing
printOn: aStream
	super printOn: aStream.
	
	aStream nextPut: $(.
	aStream nextPutAll: pattern.
	aStream nextPut: $)