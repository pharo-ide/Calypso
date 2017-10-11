printing
printOn: aStream
	super printOn: aStream.
	
	aStream 
		nextPut: $(;
		nextPutAll: annotatedClass name.
	targetItemScope ifNotNil: [ 
		aStream
			nextPutAll: '; ';
			nextPutAll: targetItemScope name].
	aStream
		nextPut: $)