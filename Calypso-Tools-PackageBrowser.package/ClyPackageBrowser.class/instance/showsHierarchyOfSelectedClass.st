testing
showsHierarchyOfSelectedClass
	self selectedClasses isEmpty ifTrue: [ ^false ].
	(classView showsContentInScope: ClyClassHierarchyScope) ifFalse: [ ^false ].
	
	^classView dataSource isBasedOnScopeOf: self selectedClasses lastSelectedItem actualObject.