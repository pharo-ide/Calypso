events handling
findSourceNodeAt: aCursorPoint
	| startPosition endPosition line lineIndex  selection ast |
	lineIndex := textMorph paragraph lineIndexForPoint: aCursorPoint.
	line := textMorph paragraph lines at: lineIndex.	
	startPosition := line first.
	endPosition := line last.
	
	selection := textMorph selectionInterval.
	selection ifNotNil: [ 
		selection first >= startPosition & (selection last <= endPosition) ifTrue: [ 
			startPosition := selection first max: 1.
			endPosition := selection last min: self editingText size]].
	
	ast := self editingMethod astForStylingInCalypso.	
	^(ast bestNodeFor: (startPosition to: endPosition)) ifNil: [ ast ]