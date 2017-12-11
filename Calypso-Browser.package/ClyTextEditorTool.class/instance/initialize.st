initialization
initialize
	super initialize.
	isDirty := false.
	changesCancelRequested := false.
	applyingChanges := false