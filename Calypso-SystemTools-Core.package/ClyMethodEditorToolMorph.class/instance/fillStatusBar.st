building
fillStatusBar
	| position |
	super fillStatusBar.
	
	position := statusBar addContextItem: (ClyCursorPositionLabelMorph of: textMorph).
	position comeToFront.
	statusBar addCommandItem: (ClyTextWrapModeSwitchMorph of: textMorph).
	statusBar addCommandItem: (ClyTextLineNumbersSwitchMorph of: textMorph).
	statusBar addCommandItem: (ClyFormatAsReadSwitchMorph of: textMorph).
	
	statusBar addCommandItem: (ClyMethodTagsAndPackageEditorMorph for: self).
	
	