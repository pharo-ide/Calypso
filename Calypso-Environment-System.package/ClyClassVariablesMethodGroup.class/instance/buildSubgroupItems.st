accessing
buildSubgroupItems 
	| builder |
	builder := ClyClassVariableMethodGroupHierarchyBuilder on: classScope.
	builder buildHierarchicalItems.
	^builder items