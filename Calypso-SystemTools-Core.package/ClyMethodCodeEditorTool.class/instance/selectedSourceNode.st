accessing
selectedSourceNode

	| selectedInterval |
	selectedInterval := self selectedTextInterval.
	^(editingMethod astForStylingInCalypso bestNodeFor: selectedInterval)
		ifNil: [ editingMethod astForStylingInCalypso ]