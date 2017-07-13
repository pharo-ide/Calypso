building
buildFromClassHierarchy: aClassHierarchyScope
	| classes |
	classes := aClassHierarchyScope basisObjects.
	classes size = 1 ifFalse: [ self error: 'Only single class hierarchy is supported' ].
	
	self buildFromClass: classes anyOne