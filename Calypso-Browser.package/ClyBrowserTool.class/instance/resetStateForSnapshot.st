initialization
resetStateForSnapshot
	self initialize.
	browser := nil.
	context := nil.
	containerTab := nil.
	statusBar := nil.
	isDirty := false