printing
printOn: aStream
	super printOn: aStream.
	
	aStream nextPut: $(.
	self printExtraInfoOn: aStream.
	aStream nextPutAll: ' from '.
	scope printBasisOn: aStream. 
	aStream nextPut: $)