operations
renameSelection
	| selectedInterval tempNode |
	self hasUnacceptedEdits ifTrue: [ ^self ].
	
	selectedInterval := textMorph selectionInterval.
	tempNode := (editingMethod astForStylingInCalypso bestNodeFor: selectedInterval).
	tempNode executeRenameRefactoringBy: self