method groups
resolvePropertiesOfMethod: anItem

	| method |
	method := anItem actualObject.
	method hasBreakpoint ifTrue: [ anItem markWith: ClyMethodWithBreakpointTag ].
	method containsHalt ifTrue: [ anItem markWith: ClyMethodWithHaltTag ].