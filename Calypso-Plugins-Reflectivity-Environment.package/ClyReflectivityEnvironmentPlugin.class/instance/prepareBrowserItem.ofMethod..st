method groups
prepareBrowserItem: anItem ofMethod: aMethod

	aMethod hasBreakpoint ifTrue: [ anItem markWith: ClyMethodWithBreakpointTag ].
	aMethod containsHalt ifTrue: [ anItem markWith: ClyMethodWithHaltTag ].