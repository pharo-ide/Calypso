building
addClassVariableGroup

	| variableQuery methodQuery group |
	variableQuery := ClyAllClassVariables from: self queryScope.
	methodQuery := ClyVariableReferences 
		from: self queryScope asLocalClassScope
		toVariablesFrom: variableQuery.
	
	group := ClyMethodGroup 
		named: 'Class variables' priority: 9 
		on: methodQuery 
		withSubgroupsFrom: (variableQuery withResult: (ClyGroupedClassVariables withHierarchy: hierarchy)).
	items add: group asCalypsoBrowserItem