printing
printBasisOn: aStream
	basisObjects ifEmpty: [ ^self ].
	
	basisObjects do: [:each |
		self printBasisObject: each on: aStream.
		aStream nextPutAll: ', '].
	aStream skip: -2.
