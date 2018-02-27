item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	aMethod containsHalt ifTrue: [ anItem markWith: ClyMethodWithHaltTag ].
	aMethod hasBreakpoint ifTrue: [ anItem markWith: ClyMethodWithBreakpointTag ].	

	(self doesMethodHasExecutionCounter: aMethod) 
		ifTrue: [ anItem markWith: ClyMethodWithExecutionCounterTag ].
	(self doesMethodHasWatchpoint: aMethod) 
		ifTrue: [ anItem markWith: ClyMethodWithWatchpointTag ]