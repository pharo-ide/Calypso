queries
searchText: aString
	"we search only original elements"
	| found |
	found := itemCursor moveToItemWhich: [ :each | each name asLowercase beginsWith: aString asLowercase ].
	^found ifFalse: [ #() ] ifTrue: [ {itemCursor position}]