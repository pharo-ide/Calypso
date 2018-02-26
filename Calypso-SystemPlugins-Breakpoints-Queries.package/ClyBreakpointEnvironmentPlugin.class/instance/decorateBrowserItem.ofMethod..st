item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	aMethod hasBreakpoint ifTrue: [ anItem markWith: ClyMethodWithBreakpointTag ].
	aMethod containsHalt ifTrue: [ anItem markWith: ClyMethodWithHaltTag ].
"	aMethod hasExecutionCounter ifTrue: [ anItem markWith: ClyMethodWithExecutionCounterTag ].
	aMethod hasWatchpoint ifTrue: [ anItem markWith: ClyMethodWithExecutionWatcherTag ]."