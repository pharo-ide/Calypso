building
addInheritedMethodGroup

	| group |
	group := ClyInheritedMethodGroup forAllMethodsInheritedFrom: self queryScope. 
	items add: group asCalypsoBrowserItem