building
applyDecorations
	| hasEdits |
	hasEdits := textMorph hasUnacceptedEdits.
	textMorph segments copy do: #delete.	
	IconStyler styleText: textModel withAst: editingMethod astForStylingInCalypso.	
	textMorph hasUnacceptedEdits: hasEdits.
	
	super applyDecorations.
	
	browser decorateMethodEditor: self