printing
printClassesOn: aStream

	classes do: [ :each | aStream nextPutAll: each name; nextPut: $,].
	classes ifNotEmpty: [ aStream skip: -1 ] 