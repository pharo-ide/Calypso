execution
canBeExecutedInContext: aBrowserContext

	^aBrowserContext selectedItems anySatisfy: [ :each | each 
		isMarkedWith: ClyMethodWithBreakpointTag  ]	