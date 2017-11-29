operations
toggle
	textMorph lineNumbersRuler 
		ifNil: [ textMorph withLineNumbers ]
		ifNotNil: [ textMorph withoutLineNumbers ].
	self updateLabel