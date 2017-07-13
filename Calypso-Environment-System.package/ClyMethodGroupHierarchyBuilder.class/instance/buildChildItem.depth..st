building
buildChildItem: childClass depth: hierarchyDepth

	| parents |
	parents := classParentsMap at: childClass.
	parents size > 1 ifTrue: [ 
		"if there are multiple parents of child object we put it as another root in hierarchy"
		extractedRoots add: childClass. ^self].
	
	self buildHierarchicalItemsFor: childClass depth: hierarchyDepth