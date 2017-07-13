updating
printTextLinePositionOf: aCharacterBlock
	| result textLine linePosition |
	textLine := aCharacterBlock textLine.
	linePosition := aCharacterBlock stringIndex - textLine first + 1.
	result := textLine lineNumber printString , '/' , self textArea lines size printString
		, ' [', linePosition printString, ']'.
	^ result