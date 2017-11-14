accessing
buildSubgroupItems
	| builder |
	builder := ClyInheritedMethodGroupSuperclassHierarchyBuilder on: classScope.
	builder buildHierarchicalItems.
	^builder items