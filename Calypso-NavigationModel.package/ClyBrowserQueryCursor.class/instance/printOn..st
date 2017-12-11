printing
printOn: aStream 
	super printOn: aStream.
	aStream nextPut: $(.
	queryResult buildingQuery printOn: aStream.
	aStream nextPut: $)