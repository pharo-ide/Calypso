operations
recordState: aBrowserNavigationState
	aBrowserNavigationState isAboutEmptyBrowser ifTrue: [ ^self ]. 
	waitingNewState ifFalse: [ ^self ].
	
	undoExecuting | redoExecuting ifTrue: [ 
		"During undo or redo system can trigger multiple navigation changes.
		waitingNewState flag here is to address this case. We need to track only first change"
		waitingNewState := false ].
	
	undoExecuting 
		ifTrue: [ redoList add: aBrowserNavigationState ]
		ifFalse: [ 
			redoExecuting ifFalse: [ redoList removeAll].
			undoList add: aBrowserNavigationState ]