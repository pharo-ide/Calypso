tests
testDecoratingMethodWithExecutionCounter

	| plugin method methodItem |
	plugin := ClyReflectiveEnvironmentPlugin new.
	self installCounterInto: #methodWithCounter.
	method := self class >> #methodWithCounter.
	methodItem := method asCalypsoBrowserItem.
		
	plugin decorateBrowserItem: methodItem ofMethod: method.
	
	self assert: (methodItem isMarkedWith: ClyMethodWithExecutionCounterTag)