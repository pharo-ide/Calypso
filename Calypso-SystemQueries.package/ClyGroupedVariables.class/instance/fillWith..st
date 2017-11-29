building
fillWith: variables
	| typedGroups |
	typedGroups := self groupVariablesByTypeAndDefinition: variables.
	
	self fillWithGroupedVariables: typedGroups 