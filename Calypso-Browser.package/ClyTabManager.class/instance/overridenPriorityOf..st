private
overridenPriorityOf: aBrowserTool
	
	^selectionPriorities at: aBrowserTool class ifAbsent: [ aBrowserTool activationPriority  ]