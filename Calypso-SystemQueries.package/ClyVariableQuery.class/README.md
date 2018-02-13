I am abstract query of all variables from given scope.

I only implement method related to the retrieved items type.
So my subclasses still should implement main query methods.

And I provide extra convertation method to get similar query but from different meta level class scope:
	
	aVariableQuery withMetaLevelScope: ClyInstanceSideScope