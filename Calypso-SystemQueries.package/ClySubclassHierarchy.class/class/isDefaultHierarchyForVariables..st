variable hierarchy
isDefaultHierarchyForVariables: aBool
	self isDefaultHierarchyForVariables = aBool 
		ifFalse: [ self invertVariableHierarchy ]