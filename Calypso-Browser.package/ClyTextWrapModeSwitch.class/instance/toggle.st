operations
toggle
	textMorph wrapped 
		ifTrue: [ textMorph beNotWrapped  ]
		ifFalse: [ textMorph beWrapped ].
	self updateLabel