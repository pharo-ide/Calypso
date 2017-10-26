building
buildFromClasses: classes
	| builder |
	builder := ClyInstanceVariableMethodGroupHierarchyBuilder on: classes.
	
	builder buildHierarchicalItems.
	
	items := builder items