execution
execute
	| classScope |
	classScope := browser classSelection asItemsScope: ClyClassScope.
	
	browser 
		switchClassViewTo: self requiredQueryResult
		inScope: classScope, (classScope asScope: self traitScopeClass)