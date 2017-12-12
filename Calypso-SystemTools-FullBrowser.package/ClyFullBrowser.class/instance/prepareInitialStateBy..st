initialization
prepareInitialStateBy: aBlock
	"This override is required to avoid default filter when special state for browser is requested"
	
	navigationHistory ignoreNavigationDuring: [		
		self prepareCleanInitialStateWithoutFilter.
		aBlock valueWithPossibleArgument: self]