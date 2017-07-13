queries
searchText: aString
	"we search only original elements"
	| found |
	found := environmentCursor moveToItemWhich: [ :each | each name asLowercase beginsWith: aString asLowercase ].
	^found ifFalse: [ #() ] ifTrue: [ {environmentCursor position}]