running
installBreakpointInto: aMethod
	| breakpoint |
	breakpoint := Breakpoint new node: aMethod ast; always.
	installedBreakpoints add: breakpoint.
	breakpoint install