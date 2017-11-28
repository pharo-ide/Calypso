testing
showsHierarchyOfSelectedClass
	self classSelection isEmpty ifTrue: [ ^false ].
	(classView showsContentInScope: ClyClassHierarchyScope) ifFalse: [ ^false ].
	
	^classView dataSource executesFromScopeOf: self classSelection lastSelectedItem actualObject.