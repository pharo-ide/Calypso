printing
printExtraInfoOn: aStream
	| descriptions |
	super printExtraInfoOn: aStream.

	descriptions := subqueries collect: [:each | each description] as: Set.
	descriptions do: [:each | 
		aStream nextPutAll: each; nextPutAll: ', '].
	aStream skip: -2 "composite can not be empty"