printing
printExtraInfoOn: aStream
	super printExtraInfoOn: aStream.

	subqueries do: [:each | 
		aStream nextPutAll: each description; nextPutAll: ', '].
	aStream skip: -2 "composite can not be empty"