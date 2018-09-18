operations
switchToMethod: aMethod
	self detachFromSystem.
	editingMethod := aMethod.
	self attachToSystem.	
	browser selectMethod: editingMethod.
	self update.