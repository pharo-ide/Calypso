printing
printOn: aStream
	super printOn: aStream.
	
	aStream 
		nextPut: $(;
		nextPutAll: annotatedClass name;
		nextPutAll: '; ';
		nextPutAll: priority asString;
		nextPut: $)