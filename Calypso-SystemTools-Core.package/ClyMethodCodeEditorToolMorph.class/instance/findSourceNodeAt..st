contexts
findSourceNodeAt: aCursorPoint
	| startPosition endPosition line lineIndex  selection ast |
	lineIndex := self leftSideBar lineIndexForPoint: aCursorPoint. "strangely we can't ask text morph about it"
	line := textMorph paragraph lines at: lineIndex.	
	startPosition := line first.
	endPosition := line last.

	selection := self selectedTextInterval.
	selection ifNotNil: [ 
		selection first >= startPosition & (selection last <= endPosition) ifTrue: [ 
			startPosition := selection first max: 1.
			endPosition := selection last min: self editingText size]].
	
	ast := self editingMethod astForStylingInCalypso.	
	^(ast bestNodeFor: (startPosition to: endPosition)) ifNil: [ ast ]