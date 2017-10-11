initialization
setUpContextParameters
	super setUpContextParameters.

	editingMethod := context lastSelectedMethod.
	self updateMethodTagsAndPackage