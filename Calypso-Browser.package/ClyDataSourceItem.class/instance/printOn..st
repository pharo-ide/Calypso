printing
printOn: aStream
	super printOn: aStream.
	
	aStream nextPut: $(.
	browserItem 
		ifNil: [ nil printOn: aStream ]
		ifNotNil: [ aStream nextPutAll: browserItem name ].
	aStream nextPut: $).