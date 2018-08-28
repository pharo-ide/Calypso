operations
cancelChanges

	changesCancelRequested := true.
	textMorph setText: self editingText.
	changesCancelRequested := false.
	self rebuildStatusBar