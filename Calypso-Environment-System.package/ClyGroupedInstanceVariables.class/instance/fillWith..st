building
fillWith: variables
	| typedGroups |
	self addInheritedMethodGroup.
	
	typedGroups := self groupVariablesByTypeAndDefinition: variables.
	typedGroups at: ClyClassVariable ifPresent: [:classVars |
		self addClassVariableGroupFrom: classVars].
	typedGroups at: ClyInstanceVariable ifPresent: [:instVars |
		self fillWithVariablesPerClass: instVars]