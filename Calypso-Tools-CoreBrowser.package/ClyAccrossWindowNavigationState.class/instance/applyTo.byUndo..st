operations
applyTo: aBrowser byUndo: undoExecuting

	(window isInWorld and: [(browserState isCurrentStateOf: window model) not]) 
		ifTrue: [ ^self ].
	
	navigationHistory recordAcrossWindowNavigationFrom: aBrowser byUndo: undoExecuting. 
	undoExecuting ifTrue: [ aBrowser close].	
		
	self restoreBrowserWindow