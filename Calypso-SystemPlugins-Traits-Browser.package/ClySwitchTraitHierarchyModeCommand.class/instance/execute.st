execution
execute
	| classScope |
	classScope := browser classSelection asItemsScope: ClyClassScope.
	
	browser 
		switchClassViewTo: self queryResultClass new
		inScope: classScope, (classScope asScope: self traitScopeClass)