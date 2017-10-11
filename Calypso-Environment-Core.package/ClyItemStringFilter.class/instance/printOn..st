printing
printOn: aStream
	super printOn: aStream.
	
	aStream nextPut: $(.
	pattern printOn: aStream.
	aStream nextPut: $)