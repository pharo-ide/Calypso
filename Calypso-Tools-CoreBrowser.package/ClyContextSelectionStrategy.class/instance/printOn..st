printing
printOn: aStream
	super printOn: aStream.
	
	aStream 
		nextPut: $(;
		nextPutAll: annotatedClass name.
	targetItemType ifNotNil: [ 
		aStream
			nextPutAll: '; ';
			nextPutAll: targetItemType name].
	aStream
		nextPut: $)