private
activationPriorityOf: aBrowserTool
	
	| priority |
	aBrowserTool belongsToCurrentBrowserContext ifFalse: [ 
		^aBrowserTool activationPriorityInNonActiveContext].
	
	priority := self overridenPriorityOf: aBrowserTool.
	^(desiredSelection includes: aBrowserTool class)
		ifTrue: [ priority * 1000 ]
		ifFalse: [ priority ]