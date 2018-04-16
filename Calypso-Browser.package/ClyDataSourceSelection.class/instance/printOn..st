printing
printOn: aStream
	super printOn: aStream.
	
	aStream nextPut: $(.
	items do: [ :each | aStream nextPutAll: each name; nextPutAll: '; ' ].
	items ifNotEmpty: [ aStream skip: -2 ].
	aStream nextPut: $).