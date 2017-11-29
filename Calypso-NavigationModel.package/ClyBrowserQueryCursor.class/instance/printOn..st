printing
printOn: aStream 
	super printOn: aStream.
	aStream nextPut: $(.
	metadata buildingQuery printOn: aStream.
	aStream nextPut: $)