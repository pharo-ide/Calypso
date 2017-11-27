initialization
prepareInitialStateBy: aBlock
	
	self prepareInitialState.
	navigationHistory ignoreNavigationDuring: [		
		aBlock valueWithPossibleArgument: self]