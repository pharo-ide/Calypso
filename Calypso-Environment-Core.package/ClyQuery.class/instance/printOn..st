printing
printOn: aStream
	super printOn: aStream.
	
	aStream nextPut: $(.
	self printExtraInfoOn: aStream.
	aStream nextPut: $)