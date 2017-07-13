accessing
buildSubgroupItems 
	| builder |
	builder := ClyClassVariableMethodGroupHierarchyBuilder on: classes.
	builder buildHierarchicalItems.
	^builder items