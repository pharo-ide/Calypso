building
fillWith: variables
	| builder classes |
	classes := variables collect: #declaringClass.
	builder := ClyInstanceVariableMethodGroupHierarchyBuilder on: classes.
	
	builder buildHierarchicalItems.
	
	items := builder items.
	items do: [ :each | each actualObject classes: environmentScope basisObjects ]