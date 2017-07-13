building
buildChildrenItemsFor: aClass depth: hierarchyDepth

	| vars item |
	vars := (self variablesDeclaredIn: aClass) collect: [ :each | 
		ClyVariableMethodGroup variable: each declaredIn: aClass classes: rootClasses].
	vars := vars asSortedCollection: [ :a :b | a name <= b name ].
	vars do: [ :each | 
		item := each asEnvironmentItem.
		item depth: 1. "We not expose hierarchy of classes. And variables are child ident as children of declaration class"
		items add: item ].
	
	super buildChildrenItemsFor: aClass depth: hierarchyDepth.		
