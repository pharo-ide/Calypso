printing
printOn: aStream
	super printOn: aStream.
	
	aStream 
		nextPut: $(;
		nextPutAll: name;
		nextPutAll: ': ';
		nextPutAll: query description;
		nextPut: $)