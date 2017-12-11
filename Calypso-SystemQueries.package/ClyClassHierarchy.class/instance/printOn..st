printing
printOn: aStream
	super printOn: aStream.
	
	inverse ifTrue: [ aStream nextPutAll: '(inverse)']