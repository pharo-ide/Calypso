operations
restoreBrowserState: aBrowserState

	(aBrowserState belongsTo: browser) ifTrue: [ ^aBrowserState applyToBrowser].
	
	aBrowserState isCurrent ifFalse: [ ^self ].
	aBrowserState restoreWindowAfterNavigationFrom: browser byUndo: undoExecuting