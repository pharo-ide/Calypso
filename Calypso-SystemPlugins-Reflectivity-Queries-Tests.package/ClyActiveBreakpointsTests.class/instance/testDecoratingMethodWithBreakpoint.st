tests
testDecoratingMethodWithBreakpoint

	| plugin method methodItem |
	plugin := ClyReflectiveEnvironmentPlugin new.
	self installBreakpointInto: (ClyClassWithBreakpoints >> #methodWithBreakpoints).
	method := ClyClassWithBreakpoints >> #methodWithBreakpoints.
	methodItem := method asCalypsoBrowserItem.
		
	plugin decorateBrowserItem: methodItem ofMethod: method.
	
	self assert: (methodItem isMarkedWith: ClyMethodWithBreakpointTag).
	self deny: (methodItem isMarkedWith: ClyMethodWithHaltTag).