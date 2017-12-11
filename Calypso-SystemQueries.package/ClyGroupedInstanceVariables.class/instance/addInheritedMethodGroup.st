building
addInheritedMethodGroup

	| group |
	group := ClyInheritedMethodGroup withMethodsInheritedFrom: self queryScope. 
	items add: group asCalypsoBrowserItem