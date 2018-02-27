item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	aMethod hasBreakpoint ifTrue: [ anItem markWith: ClyMethodWithBreakpointTag ].
	aMethod containsHalt ifTrue: [ anItem markWith: ClyMethodWithHaltTag ].
	(self doesMethodHasExecutionCounter: aMethod) ifTrue: [ anItem markWith: ClyMethodWithExecutionCounterTag ].
	(self doesMethodHasWatchpoint: aMethod) ifTrue: [ anItem markWith: ClyMethodWithWatchpointTag ]