navigation
switchToVariables
	| classScope |
	
	self changeMethodGroupQueryBy: [
		classScope := self classScopeForMethods.
		ClyAllVariables 
			from: classScope, classScope asInheritedScope 
			as: ClyGroupedInstanceVariables new
	]