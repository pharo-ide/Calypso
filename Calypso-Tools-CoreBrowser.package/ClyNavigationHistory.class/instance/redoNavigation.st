operations
redoNavigation
	redoList ifEmpty: [ ^self ].
	
	self executeRedoBy: [ 
		self restoreBrowserState: redoList removeLast]