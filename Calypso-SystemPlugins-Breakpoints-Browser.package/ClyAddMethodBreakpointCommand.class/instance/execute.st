execution
execute
	
	| breakpoint |
	methods reject: [ :each | each hasBreakpoint ] thenDo: [ :each | 
		breakpoint := Breakpoint new node: each ast.
		self applyBreakpointCondition: breakpoint.
		breakpoint install]