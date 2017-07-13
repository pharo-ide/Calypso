operations
restoreWindowAfterNavigationFrom: aBrowser byUndo: isUndoOperation

	self history recordAcrossWindowNavigationFrom: aBrowser byUndo: isUndoOperation. 
	
	isUndoOperation ifTrue: [ aBrowser close].	
	self restoreBrowserWindow