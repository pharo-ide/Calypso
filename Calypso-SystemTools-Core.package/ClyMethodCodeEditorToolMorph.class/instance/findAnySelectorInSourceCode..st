selecting text
findAnySelectorInSourceCode: selectors

	| foundSelector foundNode positions ast |
	ast := editingMethod astForStylingInCalypso.
	foundNode := ast sendNodes 
		detect: [:each | selectors includes: (foundSelector := each selector) ] 
		ifNone: [ 
			ast allChildren
				detect: [:each | each isLiteralNode and: [ selectors includes: each value ]]
				ifFound: [:literal | ^ literal sourceInterval ].
			^0 to: -1].
		
	positions := foundNode keywordsPositions.
	^positions first to: positions last + foundSelector keywords last size - 1.