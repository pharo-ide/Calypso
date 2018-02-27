tests
testDecoratingMethodWithHalt

	| plugin method methodItem |
	plugin := ClyReflectiveEnvironmentPlugin new.
	method := ClyClassWithHalts >> #methodWithHalts1.
	methodItem := method asCalypsoBrowserItem.
		
	plugin decorateBrowserItem: methodItem ofMethod: method.
	
	self assert: (methodItem isMarkedWith: ClyMethodWithHaltTag).
	self deny: (methodItem isMarkedWith: ClyMethodWithBreakpointTag)