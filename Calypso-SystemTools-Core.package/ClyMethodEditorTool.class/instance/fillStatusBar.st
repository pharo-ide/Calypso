building
fillStatusBar
	| position |
	super fillStatusBar.
	
	position := statusBar addContextItem: (ClyCursorPositionLabel of: textMorph).
	position comeToFront.
	statusBar addCommandItem: (ClyTextWrapModeSwitch of: textMorph).
	statusBar addCommandItem: (ClyTextLineNumbersSwitch of: textMorph).
	statusBar addCommandItem: (ClyFormatAsReadSwitch of: textMorph).
	
	statusBar addCommandItem: (ClyMethodExtensionSwitch for: self).
	statusBar addCommandItem: (ClyMethodTagsEditor for: self).
	
	