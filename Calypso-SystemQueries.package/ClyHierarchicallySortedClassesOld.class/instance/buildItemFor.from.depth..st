building
buildItemFor: aClass from: aHierarchy depth: currentDepth

	| item childDepth children subTreeSize childItem |
	item := ClyBrowserItem named: aClass name with: aClass. 
	item depth: currentDepth.
	items add: item.
	childDepth := currentDepth + 1.
	children := aHierarchy childrenOf: aClass.
	subTreeSize := children size.
	children do: [ :child | 
		childItem := self buildItemFor: child from: aHierarchy depth: childDepth.
		subTreeSize := subTreeSize + childItem localHierarchySize].
	item localHierarchySize: subTreeSize.
	^item