testing
belongsToRemovedBrowserContext
	editingMethod := editingMethod origin 
		localMethodNamed: editingMethod selector ifAbsent: [^true].
	context lastSelectedItem actualObject: editingMethod. 
	^false