operations
undoNavigation
	undoList ifEmpty: [ ^self ].
	
	self executeUndoBy: [ 
		self restoreBrowserState: undoList removeLast	]