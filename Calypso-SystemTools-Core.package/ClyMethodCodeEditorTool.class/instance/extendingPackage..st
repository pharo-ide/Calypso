accessing
extendingPackage: aPackage
	super extendingPackage: aPackage.
	
	self hasUnacceptedEdits ifFalse: [self packageEditingMethod: editingMethod]