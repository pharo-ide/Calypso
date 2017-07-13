testing
hasUnacceptedEdits
	textMorph ifNil: [ ^false ].
	
	^textMorph hasUnacceptedEdits