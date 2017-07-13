printing
printOn: aStream
	super printOn: aStream.
	
	aStream nextPut: $(.
	environmentItem 
		ifNil: [ nil printOn: aStream ]
		ifNotNil: [ aStream nextPutAll: environmentItem name ].
	aStream nextPut: $).