building
buildItemFor: aClass from: aHierarchyMap depth: currentDepth

	| item childDepth children subTreeSize childItem |
	item := ClyBrowserItem named: aClass name with: aClass. 
	item depth: currentDepth.
	items add: item.
	childDepth := currentDepth + 1.
	children := aHierarchyMap childrenOf: aClass.
	subTreeSize := children size.
	children do: [ :child | 
		childItem := self buildItemFor: child from: aHierarchyMap depth: childDepth.
		subTreeSize := subTreeSize + childItem localHierarchySize].
	item localHierarchySize: subTreeSize.
	^item