operations
redoNavigationOf: aBrowser
	redoList ifEmpty: [ ^self ].
	
	self executeRedoBy: [ 
		self restoreNavigationState: redoList removeLast of: aBrowser]