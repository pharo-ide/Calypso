printing
printOn: aStream
	super printOn: aStream.
	aStream 
		nextPut: $(;
		nextPutAll: analyzedClass name;
		nextPut: $)
	