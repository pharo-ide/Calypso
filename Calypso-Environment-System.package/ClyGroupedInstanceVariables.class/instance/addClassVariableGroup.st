building
addClassVariableGroup

	| variableQuery methodQuery group |
	variableQuery := ClyAllClassVariables from: self queryScope.
	methodQuery := ClyVariableReferences 
		from: (self queryScope asScope: ClyClassScope)
		toVariablesFrom: variableQuery.
	
	group := ClyMethodGroup 
		named: 'Class variables' priority: 9 
		on: methodQuery 
		withSubgroupsFrom: (variableQuery withResult: ClyGroupedClassVariables new).
	items add: group asCalypsoBrowserItem