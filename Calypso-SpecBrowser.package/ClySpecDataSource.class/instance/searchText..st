queries
searchText: aString
	"we search only original elements"
	| found |
	found := self itemCursor moveToItemWhich: [ :each | 
		each name asLowercase beginsWith: aString asLowercase ].
	
	^found ifFalse: [ #() ] ifTrue: [ {self itemCursor position}]