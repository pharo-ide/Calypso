testing
isActivationOf: aToolContextClass
	self flag: #todo.
	
	^(super isActivationOf: aToolContextClass)
		or: [ aToolContextClass includesBehavior: ClyMethodContextOfFullBrowser ]