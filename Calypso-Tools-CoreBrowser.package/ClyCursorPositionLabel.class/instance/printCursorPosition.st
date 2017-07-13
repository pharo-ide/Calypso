updating
printCursorPosition
	| result textArea |
	textArea := self textArea.
	textArea selectionStart ifNil: [ ^ '' ].
	textArea paragraph lines ifNil: [ ^ '' ].
	result := self printTextLinePositionOf: textArea selectionStart.
	textArea selectionStop ~= textArea selectionStart
		ifTrue: [ result := result , ' -- ' , (self printTextLinePositionOf: textArea selectionStop) ].
	^result