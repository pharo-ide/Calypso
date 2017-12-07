printing
printOn: aStream
	| position |
	super printOn: aStream.
	
	aStream nextPut: $(.
	position := aStream position.
	self printExtraInfoOn: aStream.
	aStream position = position 
		ifTrue: [ aStream skip: -1; nextPut: $  ]
		ifFalse: [ aStream nextPutAll: ') ' ].
	aStream nextPutAll: 'from '.
	scope isBasedOnEmptyBasis 
		ifTrue: [ aStream nextPutAll: 'empty scope']
		ifFalse: [ scope printBasisOn: aStream]. 
	