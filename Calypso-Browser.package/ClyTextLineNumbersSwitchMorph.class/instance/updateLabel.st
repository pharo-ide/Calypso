updating
updateLabel

	| newValue |
	newValue := textMorph lineNumbersRuler ifNil: [ '+L' ] ifNotNil: [ 'L' ].
	label contents: newValue