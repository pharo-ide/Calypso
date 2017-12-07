printing
printDescriptionOn: aStream

	aStream nextPutAll: self name.
	aStream nextPutAll: ': '.
	self printBasisOn: aStream