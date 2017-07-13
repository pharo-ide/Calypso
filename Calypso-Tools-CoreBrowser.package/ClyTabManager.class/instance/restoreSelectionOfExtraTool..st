private
restoreSelectionOfExtraTool: aBrowserTool
	
	aBrowserTool hasUnacceptedEdits ifFalse: [ aBrowserTool selectAsExtraTab. ^self ].
	
	(self countToolsSimilarTo: aBrowserTool) = 1
		ifTrue: [ aBrowserTool selectAsExtraTab ]
		ifFalse: [aBrowserTool deselectTab]