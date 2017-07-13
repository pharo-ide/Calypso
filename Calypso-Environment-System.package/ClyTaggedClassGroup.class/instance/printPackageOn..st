printing
printPackageOn: aStream

	aStream nextPutAll: tag; nextPutAll: ': '.	
	super printPackageOn: aStream.
	
	