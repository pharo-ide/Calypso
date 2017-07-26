building
build

	fullIndentation 
		ifTrue: [ self buildWithFullIndentation ]
		ifFalse: [ self buildWithLabelIndentation  ].
	