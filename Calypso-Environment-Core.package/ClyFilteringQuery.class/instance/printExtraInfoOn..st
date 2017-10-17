printing
printExtraInfoOn: aStream
	super printExtraInfoOn: aStream.
	
	aStream nextPut: $;.
	itemFilter printOn: aStream