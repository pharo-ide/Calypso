printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	aStream nextPutAll: 'size: '.
	subtreeSize printOn: aStream.
	aStream nextPut: $).