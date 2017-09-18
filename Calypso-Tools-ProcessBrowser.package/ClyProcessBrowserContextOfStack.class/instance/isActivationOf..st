testing
isActivationOf: aToolContextClass
	^(super isActivationOf: aToolContextClass)
		or: [ aToolContextClass includesBehavior: ClyDebuggerStackContext ]