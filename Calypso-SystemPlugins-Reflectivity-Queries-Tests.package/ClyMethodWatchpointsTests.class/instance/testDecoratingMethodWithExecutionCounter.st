tests
testDecoratingMethodWithExecutionCounter

	| plugin method methodItem |
	plugin := ClyReflectiveEnvironmentPlugin new.
	self installWatchpointInto: #methodWithWatchpoint.
	method := self class >> #methodWithWatchpoint.
	methodItem := method asCalypsoBrowserItem.
		
	plugin decorateBrowserItem: methodItem ofMethod: method.
	
	self assert: (methodItem isMarkedWith: ClyMethodWithWatchpointTag)