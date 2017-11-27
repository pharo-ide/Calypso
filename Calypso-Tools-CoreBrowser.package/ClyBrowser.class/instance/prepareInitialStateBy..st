initialization
prepareInitialStateBy: aBlock
	
	navigationHistory ignoreNavigationDuring: [		
		self prepareInitialState.
		aBlock valueWithPossibleArgument: self]