printing
printExtraInfoOn: aStream
	super printExtraInfoOn: aStream.

	^aStream nextPutAll: package name