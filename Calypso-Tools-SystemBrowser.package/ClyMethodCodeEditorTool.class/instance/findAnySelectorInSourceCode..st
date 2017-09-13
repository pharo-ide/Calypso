selecting text
findAnySelectorInSourceCode: selectors

	| foundSelector foundNode positions |
	foundNode := editingMethod sendNodes 
		detect: [ :each | selectors includes: (foundSelector := each selector) ] ifNone: [ ^0 to: -1 ].
		
	positions := foundNode keywordsPositions.
	^positions first to: positions last + foundSelector keywords last size - 1.