operations
toggleExtendingPackage
	super toggleExtendingPackage.
	
	self hasUnacceptedEdits ifFalse: [self packageEditingMethod: editingMethod]