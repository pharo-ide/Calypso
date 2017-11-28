execution
execute
	| classScope |
	classScope := browser classSelection asItemsScope: ClyClassScope.
	
	browser 
		switchClassViewTo: ClyTraitRelationshipHierarchy new
		inScope: classScope, (classScope asScope: self traitScopeClass)