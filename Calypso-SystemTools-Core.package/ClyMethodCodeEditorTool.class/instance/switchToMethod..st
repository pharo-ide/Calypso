operations
switchToMethod: aMethod
	editingMethod := aMethod.
	self update.
	browser selectMethod: editingMethod