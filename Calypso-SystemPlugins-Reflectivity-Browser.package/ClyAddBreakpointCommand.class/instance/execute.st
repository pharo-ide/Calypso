execution
execute
	
	| breakpoint |
	breakpoint := Breakpoint new node: sourceNode.
	self applyBreakpointCondition: breakpoint.
	breakpoint install