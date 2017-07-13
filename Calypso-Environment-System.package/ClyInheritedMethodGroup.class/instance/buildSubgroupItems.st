accessing
buildSubgroupItems
	| builder |
	builder := ClyInheritedMethodGroupSuperclassHierarchyBuilder on: classes.
	builder buildHierarchicalItems.
	^builder items