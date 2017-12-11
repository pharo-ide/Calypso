private
activationPriorityOf: aBrowserTool
	
	aBrowserTool belongsToCurrentBrowserContext ifFalse: [ 
		^aBrowserTool activationPriorityInNonActiveContext].
	
	^self overridenPriorityOf: aBrowserTool