printing
printDescriptionOn: aStream

	name ifNotNil: [ ^super printDescriptionOn: aStream ].
	
	subscopes do: [ :each | 
		each printDescriptionOn: aStream.
		aStream nextPutAll: ', ' ].
	aStream skip: -2 "composite scope must include at least on subscope"