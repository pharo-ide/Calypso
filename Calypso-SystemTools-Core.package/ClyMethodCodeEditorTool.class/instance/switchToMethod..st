operations
switchToMethod: aMethod
	self detachFromSystem.
	editingMethod := aMethod.
	self update.
	self attachToSystem.
	
	browser selectMethod: editingMethod