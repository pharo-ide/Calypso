method visibility
isDefaultHierarchyForMethodVisibility: aBool
	self isDefaultHierarchyForMethodVisibility = aBool
		ifFalse: [ self invertMethodVisibilityHierarchy ]