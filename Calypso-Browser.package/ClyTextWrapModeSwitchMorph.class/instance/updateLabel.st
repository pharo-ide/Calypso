updating
updateLabel

	| newValue |
	newValue := textMorph wrapped ifTrue: [ 'W' ] ifFalse: [ 'NW' ].
	wrapModeLabel contents: newValue