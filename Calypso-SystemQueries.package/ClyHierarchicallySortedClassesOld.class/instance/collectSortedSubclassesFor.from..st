building
collectSortedSubclassesFor: classItem from: localSubclasses

	| fullHierarchySize size |
	fullHierarchySize := 0.
	localSubclasses at: classItem actualObject ifPresent: [:sortedSubItems |
		fullHierarchySize := sortedSubItems size.
		sortedSubItems do: [ :each | 
			items add: each.
			size := self collectSortedSubclassesFor: each from: localSubclasses.
			fullHierarchySize := fullHierarchySize + size
			]
	].
	classItem localHierarchySize: fullHierarchySize.
	^fullHierarchySize