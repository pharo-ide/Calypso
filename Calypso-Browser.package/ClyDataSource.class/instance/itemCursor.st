accessing
itemCursor
	dirty ifTrue: [ self runUpdate ].
	^itemCursor 