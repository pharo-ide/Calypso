private
collectSortedChildrenOf: classItem depth: currentDepth from: parentClasses

	| fullHierarchySize size childDepth child |
	fullHierarchySize := 0.
	childDepth := currentDepth + 1.
	parentClasses at: classItem actualObject ifPresent: [:sortedChildren |
		fullHierarchySize := sortedChildren size.
		sortedChildren do: [ :each | 
			child := each asCalypsoBrowserItem.
			child depth: childDepth.
			items add: child.
			size := self collectSortedChildrenOf: child depth: childDepth from: parentClasses.
			fullHierarchySize := fullHierarchySize + size
			]
	].
	classItem localHierarchySize: fullHierarchySize.
	^fullHierarchySize