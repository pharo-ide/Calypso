accessing
selectedSourceNode

	| selectedInterval |
	selectedInterval := textMorph selectionInterval.
	^editingMethod astForStylingInCalypso bestNodeFor: selectedInterval