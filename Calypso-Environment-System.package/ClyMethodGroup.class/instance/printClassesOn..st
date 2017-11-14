printing
printClassesOn: aStream

	classScope classesDo: [ :each | aStream nextPutAll: each name; nextPut: $,].
	classScope isBasedOnEmptyBasis ifTrue: [ aStream skip: -1 ] 