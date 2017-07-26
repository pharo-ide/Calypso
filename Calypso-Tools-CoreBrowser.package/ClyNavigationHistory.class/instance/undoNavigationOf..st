operations
undoNavigationOf: aBrowser
	undoList ifEmpty: [ ^self ].
	
	self executeUndoBy: [ 
		self restoreNavigationState: undoList removeLast of: aBrowser ]