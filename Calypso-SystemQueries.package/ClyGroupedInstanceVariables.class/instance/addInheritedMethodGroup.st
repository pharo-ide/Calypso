building
addInheritedMethodGroup

	| group |
	group := ClyAllMethodGroup withMethodsInheritedFrom: self queryScope. 
	items add: group asCalypsoBrowserItem