printing
printOn: aStream
	super printOn: aStream.
	
	aStream 
		nextPut: $(;
		nextPutAll: (annotatedClass ifNil: [ 'detached' ] ifNotNil: [ annotatedClass name]);
		nextPutAll: '; ';
		nextPutAll: priority asString;
		nextPut: $)