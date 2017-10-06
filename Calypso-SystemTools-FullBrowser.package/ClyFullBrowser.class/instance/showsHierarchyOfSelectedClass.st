testing
showsHierarchyOfSelectedClass
	self classSelection isEmpty ifTrue: [ ^false ].
	(classView showsContentInScope: ClyClassHierarchyScope) ifFalse: [ ^false ].
	
	^classView dataSource isBasedOnScopeOf: self classSelection lastSelectedItem actualObject.