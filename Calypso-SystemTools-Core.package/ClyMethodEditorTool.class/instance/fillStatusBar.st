building
fillStatusBar
	| position |
	super fillStatusBar.
	
	position := statusBar addContextItem: (ClyCursorPositionLabelMorph of: textMorph).
	position comeToFront.
	statusBar addCommandItem: (ClyTextWrapModeSwitchMorph of: textMorph).
	statusBar addCommandItem: (ClyTextLineNumbersSwitchMorph of: textMorph).
	statusBar addCommandItem: (ClyFormatAsReadSwitch of: textMorph).
	
	statusBar addCommandItem: (ClyMethodTagsAndPackageEditor for: self).
	
	