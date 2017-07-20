operations
restoreBrowserState: aBrowserState

	(aBrowserState belongsTo: browser) ifTrue: [ ^aBrowserState applyToBrowser].
	
	aBrowserState isBrowserStillExists 
		ifTrue: [ aBrowserState isCurrentState ifFalse: [ ^self ]. ]
		ifFalse: [ aBrowserState restoreBrowserInstance ].

	aBrowserState restoreWindowAfterNavigationFrom: browser byUndo: undoExecuting