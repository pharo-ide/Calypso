building
buildTraitItemsFor: classes depth: hierarchyDepth

	| traitsBuilder currentClassesCount |
	currentClassesCount := processedClasses size.
	
	traitsBuilder := ClyInheritedMethodGroupTraitHierarchyBuilder on: classes depth: hierarchyDepth.
	traitsBuilder processedClasses: processedClasses.
	traitsBuilder buildHierarchicalItems.
	
	traitsBuilder items do: [ :each | each actualObject classes: rootClasses ].	
	items addAll: traitsBuilder items.	
	^processedClasses last: processedClasses size - currentClassesCount